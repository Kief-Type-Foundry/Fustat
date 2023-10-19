#!/usr/bin/env python3
# Copyright 2022 Fustat Project Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import logging

from argparse import ArgumentParser

from fontTools import subset
from fontTools.ttLib import TTFont, newTable
from fontTools.ttLib.tables import ttProgram


def fix_unhinted_font(font):
    gasp = newTable("gasp")
    # Set GASP so all sizes are smooth
    gasp.gaspRange = {0xFFFF: 15}

    program = ttProgram.Program()
    assembly = ["PUSHW[]", "511", "SCANCTRL[]", "PUSHB[]", "4", "SCANTYPE[]"]
    program.fromAssembly(assembly)

    prep = newTable("prep")
    prep.program = program

    font["gasp"] = gasp
    font["prep"] = prep


def main():
    parser = ArgumentParser(description="Post process font for distribution.")
    parser.add_argument("input", metavar="INPUT", help="Input font to process")
    parser.add_argument("output", metavar="OUTPUT", help="Output path to save")
    parser.add_argument("version", metavar="VERSION", help="Font version")
    parser.add_argument("--verbose", action="store_true", help="Be verbose.")

    args = parser.parse_args()
    if args.verbose:
        logging.basicConfig(level=logging.INFO)

    version = args.version.split("-")[0]
    if args.version[0] == "v":
        version = version[1:]

    font = TTFont(args.input)

    logging.info("Setting head.fontRevision to %s", version)
    font["head"].fontRevision = float(version)

    for name in font["name"].names:
        if name.nameID == 5:
            v = f"Version {version}"
            logging.info("Setting name ID 5 to %s", v)
            name.string = v
        if name.nameID == 3:
            logging.info("Updating name ID 3")
            parts = [version] + str(name).split(";")[1:]
            name.string = ";".join(parts)

    if "fvar" in font:
        from axisregistry import build_stat

        build_stat(font, [])
    fix_unhinted_font(font)

    unicodes = set(font.getBestCmap().keys())
    options = subset.Options()
    options.set(
        layout_features="*",
        layout_scripts="*",
        name_IDs="*",
        name_languages="*",
        notdef_outline=True,
        glyph_names=False,
        recalc_average_width=True,
        drop_tables=[],
        passthrough_tables=["meta"],
    )
    subsetter = subset.Subsetter(options=options)
    subsetter.populate(unicodes=unicodes)
    subsetter.subset(font)

    font.save(args.output)


if __name__ == "__main__":
    main()
