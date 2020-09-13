#!/bin/bash
# Profanity login wrapper
# Author: daid

$(exit 1)
#until $HOME/GSIV_Telnet_Client/GemstoneIV/ProfanityFE-onedreian/profanity.rb --port=8001 --char=Aiss 2> /dev/null ;do
until $HOME/GSIV_Telnet_Client/GemstoneIV/ProfanityFE-onedreian/profanity_kris.rb --port=8001 --char=Aiss --file=kris.xml 2> /dev/null ;do
  printf "."
  sleep 1
done
