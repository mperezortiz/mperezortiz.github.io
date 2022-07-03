#!/usr/bin/env sh

echo "starting to build site" 

# build site files in website 
bundle exec jekyll build
git add -A
git commit -m 'updating site'
git push origin master

# copy files into serving site folder
cp -r _site/* ../d-alex-hughes.github.io

# move to serving folder 
cd ../mperezortiz.github.io
git add -A
git commit -m 'updating site'
git push origin master

echo "finished building site" 
