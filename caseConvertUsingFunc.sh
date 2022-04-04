#!/bin/bash -x

function myFahrenheit(){
	tempF=$(echo $tempC | awk '{num1=$1; print (((9/5)*num1)+32)}')
        echo "$tempC degree celsius is equal to $tempF degree fahrenheit"
}
function myCelsius(){
	tempC=$(echo $tempF | awk '{num1=$1; print ((5/9)*(num1-32))}')
        echo "$tempF degree fahrenhit is equal to $tempC degree celsius"
}
echo "1. Convert Celsius temperature into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
echo -n "Select your choice (1-2) : "
read choice

	case $choice in
	1)
	#Celsius to Fahrenheit
	echo "Enter degree Celsius temperature: "
	read tempC
	if [[ $tempC -lt 100 && $tempC -gt 0 ]]
	then
		myFahrenheit
	else
		echo "Select Celsius value between 0 - 100"
	fi
	;;

	2)
	#Fahrenheit to Celsius
	read -p "Enter degree fahrenheit temperature: " tempF
	if [[ $tempF -lt 212 && $tempF -gt 32 ]]
	then
		myCelsius
	else
		echo "Select Fahrenheit value between 32 - 212"
	fi
	;;

	*)
	echo "Select only either 1 or 2"
	;;
	esac
