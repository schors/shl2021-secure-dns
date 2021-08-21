#!/bin/sh
# make animated gif with compilied example

if [ -x "/usr/bin/convert" ]; then
        if [ ! -d "slide" ]; then
                mkdir -p slide
        fi
        cd slide
        convert -density 600 ../shl2021-example.pdf -strip -resize 600  PNG8:slide-%02d.png
        convert -layers OptimizePlus -delay 200 slide-00.png -delay 125 slide-0[1234567].png -loop 0 ../shl2021-example.gif
else
        echo "You must install ImageMagick!"
fi

