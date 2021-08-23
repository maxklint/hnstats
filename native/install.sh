#! /usr/bin/env sh

name="hnstats.json"

mkdir -p ~/Library/Application\ Support/Mozilla/NativeMessagingHosts/
cp ${name} ~/Library/Application\ Support/Mozilla/NativeMessagingHosts/

mkdir -p ~/Library/Application\ Support/Mozilla/ManagedStorage/
cp ${name} ~/Library/Application\ Support/Mozilla/ManagedStorage/

mkdir -p ~/Library/Application\ Support/Mozilla/PKCS11Modules/
cp ${name} ~/Library/Application\ Support/Mozilla/PKCS11Modules/
