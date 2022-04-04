#!/bin/bash -x

harNum=0
read -p "Enter a value for n" n
for(( i=1; i<=n; i++ ))
do
harNum=$(echo $harNum $i | awk '{ num1=$1;num2=$2; print num1+(1/num2) }')

done
echo $harNum
