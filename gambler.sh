#!/bin/bash -x

i=1
win=0
loss=0

total=100
while [ $(($win-$loss)) -lt 100 -a $(($loss-$win)) -lt 100 ]
do
	var=$(( RANDOM%2 ))
	if [ $var -eq 1 ]
	then
	echo "Win"
	win=$(($win + 1))
	total=$(($total + 1))
	else
	echo "Loose"
	loss=$(($loss + 1))
	total=$(($total - 1))
	fi
((i++))
done
echo "Money with gambler is $total"

