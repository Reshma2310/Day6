#!/bin/bash -x

echo -n "Enter number : "
read n
singleDig=0
rev=""
oriNum=$n

while [ $n -gt 0 ]
do
    singleDig=$(( $n % 10 )) 
	n=$(( $n / 10 ))  
      rev=$( echo ${rev}${singleDig} )
done

if [ $oriNum -eq $rev ];
then
  echo "Number is palindrome"
else
  echo "Number is NOT palindrome"
fi
