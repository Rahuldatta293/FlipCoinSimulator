#!/bin/bash -x

tails=0
heads=1

for ((i=0;i<=30;i++))
do
   randomcheck=$((RANDOM%2))
   if [[ $randomcheck -eq $heads ]]
   then
         echo "Heads"
   elif [[ $randomcheck -eq $tails ]]
   then
         echo "Tails"
fi
done

printf "%s\n" "$heads" | sort | uniq -c | sort -n
printf "%s\n" "$tails" | sort | uniq -c | sort -n
