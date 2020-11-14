
$HOME/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/build.sh

echo -e "\t1:\tAiss (6)"
echo -e "\t2:\tClu (14)"
echo -e "\t3:\tMonker (15)"
echo -e "\t4:\tTrenus (4)"
echo -e "\t5:\tSorci (13)"
echo -e "\t6:\tWoory (3)"
echo -e "\t7:\tSluf (5)"
echo -e "\t8:\tPristeen (7)"
echo -e " "
echo -e "\t9:\tHoedo (22)"
echo -e "\t10:\tNoce (17)"
echo -e "\t11:\tPiie (23)"
echo -e "\t12:\tHili (24)"
echo -e "\t13:\tBize (16)"
echo -e " "
echo -e "\t14:\tWardrob (9)"
echo -e "\t15:\tLoads (10)"
echo -e "\t16:\tLoods (8)"
echo -e "\t17:\tItiems (11)"
echo -e "\t18:\tItemim (12)"
echo -e "\t19:\tHoled (18)"
echo -e "\t20:\tHeldr (19)"
echo -e "\t21:\tHelumb (20)"
echo -e "\t22:\tHudem (21)"

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
    character=Sluf
    port=8007
elif [ $num -eq 8 ]
then
    character=Pristeen
    port=8008
elif [ $num -eq 9 ]
then
    character=Hoedo
    port=8009
elif [ $num -eq 10 ]
then
    character=Noce
    port=8010
elif [ $num -eq 11 ]
then
    character=Piie
    port=8011
elif [ $num -eq 12 ]
then
    character=Hili
    port=8012
elif [ $num -eq 13 ]
then
    character=Bize
    port=8013
elif [ $num -eq 14 ]
then
    character=Wardrob
    port=8014
elif [ $num -eq 15 ]
then
    character=Loads
    port=8015
elif [ $num -eq 16 ]
then
    character=Loods
    port=8016
elif [ $num -eq 17 ]
then
    character=Itiems
    port=8017
elif [ $num -eq 18 ]
then
    character=Itemim
    port=8018
elif [ $num -eq 19 ]
then
    character=Holed
    port=8019
elif [ $num -eq 20 ]
then
    character=Heldr
    port=8020
elif [ $num -eq 21 ]
then
    character=Helumb
    port=8021
elif [ $num -eq 22 ]
then
    character=Hudem
    port=8022
else
    echo "BAD INPUT"
    exit
fi

ruby $HOME/GSIV_Telnet_Client/GemstoneIV/lich/lich.rbw --login $character --without-frontend --detachable-client=$port & pid_connect=$!
sleep 4
$HOME/GSIV_Telnet_Client/GemstoneIV/ProfanityFE-onedreian/profanity_kris.rb --port=$port --char=$character --file=kris.xml 2> /dev/null
kill $pid_connect
