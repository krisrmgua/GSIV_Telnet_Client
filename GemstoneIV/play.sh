
$HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/build.sh

echo -e "\t1:\tAiss (6)"
echo -e "\t2:\tClu (14)"
echo -e "\t3:\tMonker (15)"
echo -e "\t4:\tTrenus (4)"
echo -e "\t5:\tSorci (13)"
echo -e "\t6:\tWoory (3)"
echo -e "\t7:\tBize (16)"
echo -e "\t8:\tNoce (17)"
echo -e "\t9:\tSluf (5)"
echo -e "\t10:\tPristeen (7)"
echo -e "\t11:\tWardrob (9)"
echo -e "\t12:\tLoads (10)"
echo -e "\t13:\tLoods (8)"
echo -e "\t14:\tItiems (11)"
echo -e "\t15:\tItemim (12)"
echo -e "\t16:\tHoled (18)"
echo -e "\t17:\tHeldr (19)"
echo -e "\t18:\tHelumb (20)"
echo -e "\t19:\tWiiz (0)"
echo -e " "
echo -e "ENTER SELECTOIN NUMBER: "

read num

if [ $num -eq 1 ]
then
    character=Aiss
    port=8001
elif [ $num -eq 2 ]
then
    character=Clu
    port=8002
elif [ $num -eq 3 ]
then
    character=Monker
    port=8003
elif [ $num -eq 4 ]
then
    character=Trenus
    port=8004
elif [ $num -eq 5 ]
then
    character=Sorci
    port=8005
elif [ $num -eq 6 ]
then
    character=Woory
    port=8006
elif [ $num -eq 7 ]
then
    character=Bize
    port=8007
elif [ $num -eq 8 ]
then
    character=Noce
    port=8008
elif [ $num -eq 9 ]
then
    character=Sluf
    port=8009
elif [ $num -eq 10 ]
then
    character=Pristeen
    port=8010
elif [ $num -eq 11 ]
then
    character=Wardrob
    port=8011
elif [ $num -eq 12 ]
then
    character=Loads
    port=8012
elif [ $num -eq 13 ]
then
    character=Loods
    port=8013
elif [ $num -eq 14 ]
then
    character=Itiems
    port=8014
elif [ $num -eq 15 ]
then
    character=Itemim
    port=8015
elif [ $num -eq 16 ]
then
    character=Holed
    port=8016
elif [ $num -eq 17 ]
then
    character=Heldr
    port=8017
elif [ $num -eq 18 ]
then
    character=Helumb
    port=8018
elif [ $num -eq 19 ]
then
    character=Wiiz
    port=8019
else
    echo "BAD INPUT"
    exit
fi

ruby $HOME/GSIV_Telnet_Client/GemstoneIV/lich/lich.rbw --login $character --without-frontend --detachable-client=$port & pid_connect=$!
sleep 4
$HOME/GSIV_Telnet_Client/GemstoneIV/ProfanityFE-onedreian/profanity_kris.rb --port=$port --char=$character --file=kris.xml 2> /dev/null
kill $pid_connect
