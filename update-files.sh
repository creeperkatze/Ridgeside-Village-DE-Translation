#!/bin/bash

SOURCE=$1
TARGET=$(pwd)

if [ -z "$SOURCE" ]
then
      echo "No source folder provided"
      exit -1
fi

echo "Copying files from $SOURCE to $TARGET..."

# copy files
cp -v "$SOURCE/[CC] Ridgeside Village/i18n/default.json" "$TARGET/Ridgeside Village/[CC] Ridgeside Village/i18n/default.json"
cp -v "$SOURCE/[CP] Ridgeside Village/i18n/default.json" "$TARGET/Ridgeside Village/[CP] Ridgeside Village/i18n/default.json"
cp -v "$SOURCE/RidgesideVillage/i18n/default.json" "$TARGET/Ridgeside Village/RidgesideVillage/i18n/default.json"

