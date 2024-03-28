#!/bin/bash

TAG=$1

if [ -z "$TAG" ]
then
      echo "No tag provided"
      exit -1
fi

git checkout $TAG

find . -name ".DS_Store" -exec rm {} \;
rm -rf tmp
mkdir tmp
rm -rf tmp/*.zip
cp "nsis/ridgeside-village-german-translation-installer.exe" "./tmp/ridgeside-village-german-translation-installer.exe"
zip -r "tmp/Ridgeside Village.zip" "Ridgeside Village" "Ridgeside Village - German Translation" -x "*default.json"

git checkout main
