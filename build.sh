#!/bin/sh

docker run -ti --rm -u `id -u`:`id -g` -v /home:/home -w `pwd` -e HOME=$HOME texlive/texlive xelatex dns-security.tex
docker run -ti --rm -u `id -u`:`id -g` -v /home:/home -w `pwd` -e HOME=$HOME texlive/texlive biber dns-security
docker run -ti --rm -u `id -u`:`id -g` -v /home:/home -w `pwd` -e HOME=$HOME texlive/texlive xelatex dns-security.tex
docker run -ti --rm -u `id -u`:`id -g` -v /home:/home -w `pwd` -e HOME=$HOME texlive/texlive xelatex dns-security.tex

