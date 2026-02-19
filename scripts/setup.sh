#!/bin/sh

set -ex

# Content files

cp "Source Files/Dia Vortrag.pdf" content/post/das-ergebnis
cp "Source Files/Dia Vorlage.pdf" content/post/die-vorlage
cp "Source Files/Dia Präsentation.pptx.pdf" content/post/die-praesentation

# Favicons
# See https://gist.github.com/pfig/1808188
convert "Source Files/Kodachrome_Diarahmen.jpg" -resize 256x256 -transparent white static/images/favicon-256.png
convert static/images/favicon-256.png -resize 16x16 static/images/favicon-16.png
convert static/images/favicon-256.png -resize 32x32 static/images/favicon-32.png
convert static/images/favicon-256.png -resize 64x64 static/images/favicon-64.png
convert static/images/favicon-256.png -resize 128x128 static/images/favicon-128.png
convert static/images/favicon-16.png static/images/favicon-32.png static/images/favicon-64.png static/images/favicon-128.png static/images/favicon-256.png -colors 256 static/images/favicon.ico

# NPM dependencies
npm install
