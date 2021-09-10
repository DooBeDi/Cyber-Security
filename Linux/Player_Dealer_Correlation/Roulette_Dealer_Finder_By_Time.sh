#!/bin/bash
# echo Enter Date in (MM/DD) format (ex.March 20 will be 0320)"
#echo You have entered $DATE1 "
#find -type f -iname ${1}*"
#echo Enter Time in hour only (ex. 07:00 will be 07)"
#echo Is the AM or PM?"
#echo You have entered ${2} :00 ${3}" 




echo "Enter Date in (MM/DD) format (ex.March 20 will be 0320)"
read DATE1
echo "You have entered $DATE1"
find -type f -iname $DATE1* |xargs cat | awk '{print $1,$2,$5,$6}' > Roulette_Dealers_On_Date.txt
echo "Enter Time in HH:MM:SS format and if it is AM or PM  (ex. 07:00 PM will be 07:00:00 PM )"
read TIME1
echo "You have entered $TIME1"
grep -i "$TIME1" Roulette_Dealers_On_Date.txt >> Dealer_Working_During_Losses




