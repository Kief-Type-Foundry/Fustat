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
from argparse import ArgumentParser

import ufoLib2
import pathlib

from glyphsLib import GSFont
from glyphsLib.builder import to_designspace


def glyphs2ufo(args):
    font = GSFont(args.input)

    glyphOrder = [g.name for g in font.glyphs if g.color != 0]

    for glyph in font.glyphs:
        if glyph.color == 0:
            glyphOrder.append(glyph.name)
            for layer in glyph.layers:
                layer.components = []
                layer.width = 1000

    designspace = to_designspace(
        font,
        family_name=None,
        propagate_anchors=True,
        instance_dir=None,
        minimize_glyphs_diffs=False,
        generate_GDEF=True,
        store_editor_state=False,
        write_skipexportglyphs=True,
        ufo_module=ufoLib2,
        minimal=True,
        glyph_data=[args.glyph_data],
    )

    args.output.mkdir(parents=True, exist_ok=True)

    designspace.write(args.output / (args.input.stem + ".designspace"))
    for source in designspace.sources:
        source.font.save(args.output / source.filename, overwrite=True)


def main():
    parser = ArgumentParser(description="Convert Glyphs file to UFOs.")
    parser.add_argument("input", type=pathlib.Path, help="Input font to process")
    parser.add_argument("output", type=pathlib.Path, help="Output dir")
    parser.add_argument("glyph_data", type=pathlib.Path, help="Input GlyphData.xml")

    args = parser.parse_args()
    glyphs2ufo(args)


if __name__ == "__main__":
    main()
