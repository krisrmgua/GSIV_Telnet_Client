if [ "$1" != "" ]; then
    num=$1
else
    echo -e " "
    echo -e "\t1:\tMonitor Tall"
    echo -e "\t2:\tMonitor Wide"
    echo -e "\t3:\tMac Laptop"
    echo -e "\t4:\tIpad"
    echo -e "\t5:\tMSI"
    echo -e "\t6:\tMini"
    echo -e "\t7:\tMiniLap"
    echo -e "\t8:\tWide Split"
    echo -e "\t9:\t3 Wide Split"
    echo -e " "
    echo -e "ENTER SELECTOIN NUMBER: "

    read num
fi

if [ $num -eq 1 ]
then
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_top.xml > ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/bard.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/empath.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/cleric.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/paladin.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/monk.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/ranger.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/rogue.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/sorcerer.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/warrior.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/wizard.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/enemy.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/mycharecters.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_middle.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_lap_tall.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_bottom.xml >> ~/.profanity/kris.xml
elif [ $num -eq 2 ]
then
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_top.xml > ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/bard.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/empath.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/cleric.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/paladin.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/monk.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/ranger.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/rogue.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/sorcerer.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/warrior.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/wizard.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/enemy.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/mycharecters.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_middle.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_lap_wide.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_bottom.xml >> ~/.profanity/kris.xml
elif [ $num -eq 3 ]
then
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_top.xml > ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/bard.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/empath.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/cleric.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/paladin.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/monk.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/ranger.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/rogue.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/sorcerer.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/warrior.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/wizard.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/enemy.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/mycharecters.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_middle.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_lap_normal.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_bottom.xml >> ~/.profanity/kris.xml
elif [ $num -eq 4 ]
then
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_ipad.xml > ~/.profanity/kris.xml
elif [ $num -eq 5 ]
then
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_top.xml > ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/bard.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/empath.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/cleric.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/monk.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/paladin.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/ranger.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/rogue.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/sorcerer.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/warrior.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/wizard.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/enemy.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/mycharecters.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_middle.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_lap_msi.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_bottom.xml >> ~/.profanity/kris.xml
elif [ $num -eq 6 ]
then
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_top.xml > ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/bard.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/empath.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/cleric.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/monk.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/paladin.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/ranger.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/rogue.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/sorcerer.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/warrior.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/wizard.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/enemy.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/mycharecters.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_middle.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_lap_mini.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_bottom.xml >> ~/.profanity/kris.xml
elif [ $num -eq 7 ]
then
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_top.xml > ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/bard.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/empath.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/cleric.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/monk.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/paladin.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/ranger.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/rogue.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/sorcerer.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/warrior.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/wizard.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/enemy.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/mycharecters.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_middle.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_lap_mini2.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_bottom.xml >> ~/.profanity/kris.xml
elif [ $num -eq 8 ]
then
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_top.xml > ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/bard.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/empath.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/cleric.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/monk.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/paladin.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/ranger.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/rogue.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/sorcerer.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/warrior.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/wizard.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/enemy.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/mycharecters.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_middle.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_lap_wide_split.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_bottom.xml >> ~/.profanity/kris.xml
elif [ $num -eq 9 ]
then
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_top.xml > ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/bard.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/empath.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/cleric.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/monk.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/paladin.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/ranger.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/rogue.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/sorcerer.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/warrior.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/wizard.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/enemy.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/mycharecters.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_middle.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_lap_3_wide_split.xml >> ~/.profanity/kris.xml
    cat $HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/kris_bottom.xml >> ~/.profanity/kris.xml
else
    echo "BAD INPUT"
    exit
fi
