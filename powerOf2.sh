#!/bin/bash

echo "Enter a value for power"
read power
num=2
pow=1
for((i=1; i<=power; i++))
do
	pow=$(($pow*$num))
echo $pow
done

