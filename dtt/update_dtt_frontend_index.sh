#!/bin/bash

sed -e 's/<div id=\"root\"><\/div>/<script src=\"\/public\/dtt-header.js\"><\/script><geor-header active-app=\"import\" style=\"height:90px\"><\/geor-header><div id=\"root\" style=\"--dtt-vh:calc(100vh - 90px)\"><\/div>/' /usr/share/nginx/html/index.html >> /usr/share/nginx/html/index.html.tmp

mv /usr/share/nginx/html/index.html.tmp /usr/share/nginx/html/index.html

sed -e 's/<link rel=\"icon\" type=\"image\/svg+xml\" href=\".\/assets\/images\/logo.svg\" \/>/<link rel=\"icon\" href=\"\/favicon.ico\"\/>/' /usr/share/nginx/html/index.html >> /usr/share/nginx/html/index.html.tmp

mv /usr/share/nginx/html/index.html.tmp /usr/share/nginx/html/index.html
