#!/usr/bin/env bash

rm -Rf __build
mkdir __build

stylus -c -u nib -o __build pupperazzi.styl

cp index.html __build/index.html
cp -R img __build/img
cp favicon.ico __build/favicon.ico
cp apple-touch-icon.png __build/apple-touch-icon.png

htmlcompressor --type html --recursive --remove-quotes --simple-bool-attr -o ./__build/ ./__build/
