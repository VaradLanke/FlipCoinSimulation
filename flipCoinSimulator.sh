#!/bin/bash
echo "Welcome to flip coin simulator"
hcount=0
tcount=0
for count in {1..10..1}
do
	rn=$((RANDOM%2))
	if [ $rn -eq 0 ]
	then
		echo "Tails"
		tcount=$(($tcount+1))
	else
		echo "Heads"
		hcount=$(($hcount+1))
	fi
done
echo "Heads Won : $hcount"
echo "Tails Won : $tcount"
