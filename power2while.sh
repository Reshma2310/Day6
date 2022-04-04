#!/bin/bash -x

echo "Enter a integer for the base"
read m
echo "Enter a positve integer for the power"
read n
while [ $m -gt 0 ]
do
  exp=$(( m ^ n ))
echo $exp
done
