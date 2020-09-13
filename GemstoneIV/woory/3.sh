#!/bin/bash
# Profanity login wrapper
# Author: daid

$(exit 1)
#until $HOME/GSIV_Telnet_Client/GemstoneIV/ProfanityFE-onedreian/profanity.rb --port=8000 --char=Woory 2> /dev/null ;do
$HOME/GSIV_Telnet_Client/GemstoneIV/ProfanityFE-onedreian/profanity_kris.rb --port=8001 --char=Woory --file=kris.xml
  printf "."
  sleep 1
done
