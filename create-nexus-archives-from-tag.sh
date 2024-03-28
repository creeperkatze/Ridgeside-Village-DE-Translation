#!/bin/bash

TAG=$1

if [ -z "$TAG" ]
then
      echo "No tag provided"
      exit -1
fi

git checkout $TAG

find . -name ".DS_Store" -exec rm {} \;
rm -rf tmp/*.zip
cp "nsis/Ridgeside Village - German Translation.exe" .
zip -r "tmp/Ridgeside Village.zip" "Ridgeside Village" "Ridgeside Village - German Translation" "Ridgeside Village - German Translation.exe" -x "*default.json"
rm -rf "./Ridgeside Village - German Translation.exe"

git checkout main
