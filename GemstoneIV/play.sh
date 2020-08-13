
$HOME/GemstoneIV/buildxmlfile/build.sh

echo -e "\t1:\tWoory"
echo -e "\t2:\tSluf"
echo -e "\t3:\tClu"
echo -e "\t4:\tPristeen"
echo -e "\t5:\tAiss"
echo -e "\t6:\tSorci"
echo -e "\t7:\tTrenus"
echo -e "\t8:\tWardrob"
echo -e "\t9:\tLoads"
echo -e "\t10:\tLoods""
echo -e "\t11:\tItiems""
echo -e "\t12:\tItemim""
echo -e " "
echo -e "ENTER SELECTOIN NUMBER: "

read num

if [ $num -eq 1 ]
then
    character=Woory
    port=8001
elif [ $num -eq 2 ]
then
    character=Sluf
    port=8002
elif [ $num -eq 3 ]
then
    character=Clu
    port=8003
elif [ $num -eq 4 ]
then
    character=Pristeen
    port=8004
elif [ $num -eq 5 ]
then
    character=Aiss
    port=8005
elif [ $num -eq 6 ]
then
    character=Sorci
    port=8006
elif [ $num -eq 7 ]
then
    character=Trenus
    port=8007
elif [ $num -eq 8 ]
then
    character=Wardrob
    port=8008
elif [ $num -eq 9 ]
then
    character=Loads
    port=8009
elif [ $num -eq 10 ]
then
    character=Loods
    port=8010
elif [ $num -eq 11 ]
then
    character=Itiems
    port=8011
elif [ $num -eq 12 ]
then
    character=Itemim
    port=8012
else
    echo "BAD INPUT"
    exit
fi

ruby $HOME/GemstoneIV/lich/lich.rbw --login $character --without-frontend --detachable-client=$port & pid_connect=$!
sleep 10
$HOME/GemstoneIV/ProfanityFE-onedreian/profanity_kris.rb --port=$port --char=$character --file=kris.xml 2> /dev/null
kill $pid_connect
