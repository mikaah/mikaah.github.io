#!/bin/bash

VERSION="$1"

convert moon.png -background transparent -fill blue -pointsize 64 -gravity south label:"PWA $VERSION" -composite 256.png
sed -i "s/ver\. .\../ver. $VERSION/" app.html 
git add -u
git commit -m "ver. $VERSION"

#  203  git push origin main
#  204  wget -O 256.png https://mikaah.github.io/256.png
#  205  git diff
#  206  ls -l
#  207  cd mikaah.github.io/
#  208  convert moon.png -background transparent -fill blue -pointsize 64 -gravity south label:"PWA 1.2" -composite 256.png
#  209  git diff
#  210  cat app.html 
#  211  sed -i 's/ver\. .\../ver. 1.2/'
#  212  sed -i 's/ver\. .\../ver. 1.2/' app.html 
#  213  git diff
#  214  feh 256.png 
#  215  cd mikaah.github.io/
#  216  git statsu
#  217  git status 
#  218  cat app.html 
#  219  feh 256.png 
#  220  history 
#  221  vim up.sh
#  222   history | tail -n20 >> up.sh 
