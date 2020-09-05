#!/bin/bash -x

Noofheads=0
Nooftails=0

for ((i=0;i<=30;i++))
do
	heads=1
	tails=0
	randomcheck=$((Random%2))

	if [[ $randomcheck -eq $heads ]]
	then
		echo "heads"
		Noofheads=$((Noofheads++))
	elif [[ $randomcheck -eq $tails ]]
	then
		echo "tails"
		Nooftails=$((Nooftails++))
fi
done

printf "%s\n" "$Noofheads" | sort | uniq -c
printf "%s\n" "$Nooftails" | sort | uniq -c
