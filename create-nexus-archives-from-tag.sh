#!/bin/bash

TAG=$1

if [ -z "$TAG" ]
then
      echo "No tag provided"
      echo "Usage example for version '0.0.12': ./create-nexus-archives-from-tag.sh 0.0.12"
      exit -1
fi

git fetch --all
git checkout $TAGAG

find . -name ".DS_Store" -exec rm {} \;
rm -rf tmp
mkdir tmp
zip -r "tmp/Ridgeside Village - German.zip" "Ridgeside Village" -x "*default.json"
git checkout main
