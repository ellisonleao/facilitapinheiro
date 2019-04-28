#!/bin/bash

# build html
./node_modules/.bin/html-minifier --collapse-whitespace src/index.html -o index.html
./node_modules/.bin/html-minifier --collapse-whitespace src/thanks.html -o thanks.html
echo "html compressed"

# build css
cat css/photoswipe.css css/default-skin.css css/styles.css | ./node_modules/.bin/csso >dist/css/styles.css
echo "css compressed"

# build js
cat js/tabs.js js/gallery.js | ./node_modules/.bin/uglifyjs -m >dist/js/build.min.js
echo "js compressed"
