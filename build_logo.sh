#!/bin/bash

DIMENSIONS=1024x1024
BORDER=80x80

inkscape pyre.svg --export-type=png --export-filename=pyre_temp.png

magick pyre_temp.png -resize $DIMENSIONS \
    -background white -gravity center -extent $DIMENSIONS \
    -bordercolor white -border $BORDER pyre.png

rm pyre_temp.png
