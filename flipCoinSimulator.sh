#!/bin/bash
echo "Welcome to flip coin simulator"
hcount=0
tcount=0

while [ 1 ]
do
	if [ $hcount -lt 21 -o $tcount -lt 21 ]
	then
		rn=$((RANDOM%2))
		if [ $rn -eq 0 ]
		then
			#echo "Tails"
			tcount=$(($tcount+1))
		else
			#echo "Heads"
			hcount=$(($hcount+1))
		fi
	else
		break
	fi
done

if [ $hcount -gt $tcount ]
then
	diff=$(($hcount - $tcount))
	echo "Heads Won by $diff || HeadCount : $hcount || TailCount : $tcount"
elif [ $tcount -gt $hcount ]
then
	diff=$(($tcount - $hcount))
	echo "Tails Won by $diff || TailCount : $tcount || HeadCount : $hcount"
elif [ $hcount -eq $tcount ]
then
	echo "-Tie-"
fi
