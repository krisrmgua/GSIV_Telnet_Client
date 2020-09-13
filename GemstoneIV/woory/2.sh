#!/bin/bash
# Profanity login wrapper
# Author: daid

$(exit 1)
until $HOME/GSIV_Telnet_Client/GemstoneIV/ProfanityFE-matt-lowe/profanity.rb --port=8000 2> /dev/null ;do
  printf "."
  sleep 1
done
