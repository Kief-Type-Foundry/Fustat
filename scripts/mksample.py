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
import argparse

from blackrenderer.font import BlackRendererFont
from blackrenderer.backends.svg import SVGSurface
from blackrenderer.render import buildGlyphLine, calcGlyphLineBounds
from fontTools.misc.arrayTools import insetRect, offsetRect, unionRect

import uharfbuzz as hb


def parseFeatures(text):
    if not text:
        return {}
    features = {}
    for feature in text.split(","):
        value = 1
        start = 0
        end = -1
        if feature[0] == "-":
            value = 0
        if feature[0] in ("+", "-"):
            feature = feature[1:]
        tag = feature
        if "[" in feature:
            tag, extra = feature.split("[")
            if "=" in extra:
                extra, value = extra.split("=")
            if extra[-1] == "]":
                extra = extra[:-1]
                start = end = extra
                if ":" in extra:
                    start, end = extra.split(":")
        features[tag] = [[int(value), int(start), int(end)]]
    return features


def makeLine(buf, font, y):
    line = buildGlyphLine(buf.glyph_infos, buf.glyph_positions, font.glyphNames)

    xMin, yMin, xMax, yMax = calcGlyphLineBounds(line, font)
    rect = offsetRect((xMin, yMin, xMax, yMax), 0, y)

    height = -yMin + yMax

    return line, rect, height


def draw(surface, path, text, features):
    margin = 100
    bounds = None
    lines = []
    y = margin
    font = BlackRendererFont(path)
    locations = sorted(
        [i.coordinates for i in font.ttFont["fvar"].instances], key=lambda x: -x["wght"]
    )
    for location in locations:
        font = BlackRendererFont(path)
        font.setLocation(location)

        buf = hb.Buffer()
        buf.add_str(text)
        buf.guess_segment_properties()
        hb.shape(font.hbFont, buf, features)

        line, rect, height = makeLine(buf, font, y)
        lines.append((font, line, rect, y))

        if bounds is None:
            bounds = rect
        bounds = unionRect(bounds, rect)
        y += height + margin

    bounds = insetRect(bounds, -margin, -margin)
    with surface.canvas(bounds) as canvas:
        canvas.drawRectSolid(bounds, (0.05, 0.06, 0.09))
        for font, line, rect, y in lines:
            with canvas.savedState():
                # Center align the line.
                x = (bounds[2] - rect[2]) / 2 - margin
                canvas.translate(x, y)
                for glyph in line:
                    with canvas.savedState():
                        canvas.translate(glyph.xOffset, glyph.yOffset)
                        font.drawGlyph(glyph.name, canvas, textColor=(1, 1, 1))
                    canvas.translate(glyph.xAdvance, glyph.yAdvance)


def main(args=None):
    parser = argparse.ArgumentParser(description="Create SVG sample.")
    parser.add_argument("font", help="input font")
    parser.add_argument("-t", "--text", help="input text", required=True)
    parser.add_argument("-f", "--features", help="input features")
    parser.add_argument("-o", "--output", help="output SVG", required=True)

    options = parser.parse_args(args)

    surface = SVGSurface()
    features = parseFeatures(options.features)
    draw(surface, options.font, options.text, features)
    surface.saveImage(options.output)


if __name__ == "__main__":
    import sys

    sys.exit(main())
