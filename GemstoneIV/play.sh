echo -e "\t1:\tWoory"
echo -e "\t2:\tSluf"
echo -e "\t3:\tPristeen"
echo -e "\t4:\tAiss"
echo -e "\t5:\tSorci"
echo -e "\t6:\tTrenus"
echo -e "\t7:\tWardrob"
echo -e "\t8:\tLoads"
echo -e "\n"
echo -e "ENTER SELECTOIN NUMBER: "

read num

if [ $num -eq 1 ]
then
    character=Woory
    port=8000
elif [ $num -eq 2 ]
then
    character=Sluf
    port=8001
else
    echo "BAD INPUT"
    exit
fi

ruby $HOME/GemstoneIV/lich/lich.rbw --login $character --without-frontend --detachable-client=$port & pid_connect=$!
sleep 10
$HOME/GemstoneIV/ProfanityFE-onedreian/profanity_kris.rb --port=$port --char=$character --file=kris.xml 2> /dev/null
kill $pid_connect
