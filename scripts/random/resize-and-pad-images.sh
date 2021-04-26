#!/bin/bash
shopt -s nullglob

for file in application-icons/*.png
do
    echo $file
    convert -define png:size=200x200 $file -thumbnail '200x200>' -background white -gravity center -extent 200x200 $file
done

shopt -u nullglob #revert nullglob back to it's normal default state
