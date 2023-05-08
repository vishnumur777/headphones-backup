#!/bin/bash
clear
echo "Select the operation"
echo "1.connect your headphones"
echo "2.disconnect your headphones"
read x
if [[ $x -eq 1 ]]
then
	echo "Select headphones to connect"
	echo "1. Boult Airbass earpods"
	echo "2. NB119-T"

	echo "Enter option:"
	read y

	if [[ $y -eq 1 ]]
	then
		bluetoothctl connect 53:57:B6:05:F4:2A
	elif [[ $y -eq 2 ]]
	then 
		bluetoothctl connect 41:42:73:DF:40:1F
	else
		echo "Invalid option to connect"
	fi
	exit
elif [[ $x -eq 2 ]]
then 
	echo "Select headphones to disconnect"
	echo "1. Boult Airbass earpods"
	echo "2. NB119-T"

	echo "Enter option:"
	read y

	if [[ $y -eq 1 ]]
	then
			bluetoothctl disconnect 53:57:B6:05:F4:2A
	elif [[ $y -eq 2 ]]
	then 
			bluetoothctl disconnect 41:42:73:DF:40:1F
	else
			echo "Invalid option to disconnect"
	fi
	exit
else
	echo "Please select valid operation"
fi 
exit
