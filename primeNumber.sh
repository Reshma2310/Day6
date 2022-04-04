#!/bin/bash -x

read -p "Enter a Number: " num
i=2
res=0

while [[ $i -le $(($num/2)) ]]
do
	if [[ $(($num%$i)) -eq 0 ]]
	then
		res=1
	fi
((i++))
done

if [[ $res -eq 1 ]]
then
	echo "Number is Not Prime"
else
	echo "Number is Prime"
fi
