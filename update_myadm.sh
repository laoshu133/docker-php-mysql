#!/usr/bin/env bash

cd myadm/

VER=5.2.1
NAME=phpMyAdmin-$VER-all-languages

echo Fetching...

wget https://files.phpmyadmin.net/phpMyAdmin/$VER/$NAME.zip

unzip $NAME.zip
mv $NAME/* ./

echo Cleaning...

rm -rf $NAME.zip* $NAME
rm -rf doc ChangeLog RELEASE-*

cd locale
ls | grep -v en | grep -v zh_CN | xargs -I {} rm -rf {}
cd -

echo Done.
