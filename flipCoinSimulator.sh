#!/bin/bash
echo "Welcome to flip coin simulator"
rn=$((RANDOM%2))
echo $rn
if [ $rn -eq 0 ]
then
	echo "Tails"
else
	echo "Heads"
fi
