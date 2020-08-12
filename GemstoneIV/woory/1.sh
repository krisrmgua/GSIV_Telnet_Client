#!/bin/bash
# Script to automate login to Tillmen's lich in detached mode
# Author: daid 

character="Woory"

if [ -z "$character" ];then
  exit
fi
echo "Logging in $character in detached mode."
echo "call profanity in another terminal"
ruby $HOME/GemstoneIV/lich/lich.rbw --login $character --without-frontend --detachable-client=8000
