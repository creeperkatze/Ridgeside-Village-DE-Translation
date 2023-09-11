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
zip -r "tmp/Ridgeside Village.zip" "[CC] Ridgeside Village" "[CP] Ridgeside Village" "[JA] Ridgeside Village" "[MFM] Ridgeside Village" "[STF] Ridgeside Village" "RidgesideVillage"

git checkout main
