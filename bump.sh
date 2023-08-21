#!/bin/bash

VERSION="$1"
COLOR=blue

if [[ "$#" -ge 2 ]] ; then
  COLOR="$2"
fi

convert moon.png -background transparent -fill $COLOR -pointsize 64 -gravity south label:"PWA $VERSION" -composite 256.png
sed -i "s/ver\. .\../ver. $VERSION/" app.html 
git add -u
git commit -m "ver. $VERSION"

