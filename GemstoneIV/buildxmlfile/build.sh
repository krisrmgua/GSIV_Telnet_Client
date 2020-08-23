echo -e " "
echo -e "\t1:\tMonitor Tall"
echo -e "\t2:\tMonitor Wide"
echo -e "\t3:\tMac Laptop"
echo -e "\t4:\tIpad"
echo -e "\t5:\tMSI"
echo -e " "
echo -e "ENTER SELECTOIN NUMBER: "

read num

if [ $num -eq 1 ]
then
    cat $HOME/GemstoneIV/buildxmlfile/kris_top.xml > ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/empath.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/cleric.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/paladin.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/ranger.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/sorcerer.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/warrior.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/wizard.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/kris_middle.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/kris_lap_tall.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/kris_bottom.xml >> ~/.profanity/kris.xml
elif [ $num -eq 2 ]
then
    cat $HOME/GemstoneIV/buildxmlfile/kris_top.xml > ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/empath.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/cleric.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/paladin.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/ranger.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/sorcerer.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/warrior.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/wizard.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/kris_middle.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/kris_lap_wide.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/kris_bottom.xml >> ~/.profanity/kris.xml
elif [ $num -eq 3 ]
then
    cat $HOME/GemstoneIV/buildxmlfile/kris_top.xml > ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/empath.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/cleric.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/paladin.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/ranger.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/sorcerer.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/warrior.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/wizard.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/kris_middle.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/kris_lap_normal.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/kris_bottom.xml >> ~/.profanity/kris.xml
elif [ $num -eq 4 ]
then
    cat $HOME/GemstoneIV/buildxmlfile/kris_ipad.xml > ~/.profanity/kris.xml
elif [ $num -eq 5 ]
then
    cat $HOME/GemstoneIV/buildxmlfile/kris_top.xml > ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/empath.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/cleric.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/paladin.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/ranger.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/sorcerer.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/warrior.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/wizard.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/kris_middle.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/kris_lap_msi.xml >> ~/.profanity/kris.xml
    cat $HOME/GemstoneIV/buildxmlfile/kris_bottom.xml >> ~/.profanity/kris.xml
else
    echo "BAD INPUT"
    exit
fi
