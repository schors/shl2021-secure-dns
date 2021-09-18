#!/bin/sh
# make animated gif with compilied example

if [ -x "/usr/bin/convert" ]; then
        if [ ! -d "slide" ]; then
                mkdir -p slide
        fi
        cd slide
        rm -f *.png
        convert -density 600 ../dns-security.pdf -strip -resize 600  PNG8:slide-%02d.png
        convert -layers OptimizePlus -delay 200 slide-00.png -delay 125 slide-0[0123456789].png -delay 125 slide-[123456789][0123456789].png -loop 0 ../dns-security.gif
else
        echo "You must install ImageMagick!"
fi

