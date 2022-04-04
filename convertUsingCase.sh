#!/bin/bash

echo "1. Convert Celsius temperature into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
echo -n "Select your choice (1-2) : "
read choice

if [ $choice -eq 1 ]
then
	#Celsius to Fahrenheit
	echo "Enter degree Celsius temperature: "
	read tempC1
	tempF1=$(echo $tempC1 | awk '{num1=$1; print (((9/5)*num1)+32)}')
	echo "$tempC1 degree celsius is equal to $tempF1 degree fahrenheit"

elif [ $choice -eq 2 ]
then
	read -p "Enter degree fahrenheit temperature: " tempF2
	tempC2=$(echo $tempF2 | awk '{num1=$1; print ((5/9)*(num1-32))}')
	echo "$tempF2 degree fahrenhit is equal to $tempC2 degree celsius"

else
	echo "Please select 1 or 2 only"
	exit 1
fi
