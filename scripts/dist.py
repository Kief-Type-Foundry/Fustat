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

from fontTools.ttLib import TTFont


def main():
    parser = ArgumentParser(description="Set font version.")
    parser.add_argument("input", metavar="INPUT", help="Input font to process")
    parser.add_argument("version", metavar="VERSION", help="Font version")
    parser.add_argument("--verbose", action="store_true", help="Be verbose.")

    args = parser.parse_args()
    if args.verbose:
        logging.basicConfig(level=logging.INFO)

    font = TTFont(args.input)
    logging.info("Dropping glyph names")
    font["post"].formatType = 3

    version = args.version.split("-")[0]
    if args.version[0] == "v":
        version = version[1:]

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

    font["post"].formatType = 3

    font.save(args.input)


if __name__ == "__main__":
    main()
