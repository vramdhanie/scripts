#!/bin/bash

size=500x
quality=90

if [[ -z $1 ]]; then
  echo Please specify a file name
  exit 1
fi

echo About to mogrify $1

filename="${1%.*}"

# echo File name without extension $filename

# mv $1 temp.png

mogrify -format jpg $1
mogrify -resize $size $filename.jpg
mogrify -strip -quality $quality $filename.jpg

rm $1
