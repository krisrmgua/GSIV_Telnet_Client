#!/bin/bash
# Profanity login wrapper
# Author: daid

$(exit 1)
until $HOME/GemstoneIV/ProfanityFE-matt-lowe/profanity.rb --port=8001 2> /dev/null ;do
  printf "."
  sleep 1
done
