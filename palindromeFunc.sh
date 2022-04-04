#!/bin/bash -x

echo -n "Enter First number: "
read n
singleDig=0
rev=""
oriNum=$n

function isPalin() {
	rev=""
while [ $n -gt 0 ]
do
    singleDig=$(( $n % 10 ))
	n=$(( $n / 10 ))
    rev=$( echo ${rev}${singleDig} )
done

if [[ $oriNum -eq $rev ]]
then
  echo "Number $oriNum is palindrome"
else
  echo "Number $oriNum is NOT palindrome"
fi
}

isPalin

echo -n "Enter Second number: "
read n
oriNum=$n
isPalin
