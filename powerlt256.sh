
#!/bin/bash

echo "Enter a value for power"
read power
num=2
pow=1
i=1
while [ $pow -lt 256 ]
do
	pow=$(($pow*$num));
	echo $pow;
	((i++))
done

