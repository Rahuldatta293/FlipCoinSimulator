#!/bin/bash

FLIP=$(($(($RANDOM%10))%2))

if [ $FLIP -eq 1 ]
then
	echo "tails"
else
	echo "heads"
fi

