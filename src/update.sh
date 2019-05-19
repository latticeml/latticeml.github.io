#! /bin/bash

git pull
JEKYLL_ENV=production jekyll build
find ..  !  \( -regex '.*src.*' -o -regex '.*git.*'  \)  -exec rm -r {} +
cp -r _site/* ../
# rm _site