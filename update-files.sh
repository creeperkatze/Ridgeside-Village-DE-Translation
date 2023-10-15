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
cp -v "$SOURCE/[CC] Ridgeside Village/i18n/default.json" "$TARGET/[CC] Ridgeside Village/i18n/default.json"
cp -v "$SOURCE/[CP] Ridgeside Village/i18n/default.json" "$TARGET/[CP] Ridgeside Village/i18n/default.json"
cp -v "$SOURCE/[JA] Ridgeside Village/i18n/default.json" "$TARGET/[JA] Ridgeside Village/i18n/default.json"
cp -v "$SOURCE/[MFM] Ridgeside Village/i18n/default.json" "$TARGET/[MFM] Ridgeside Village/i18n/default.json"

