#!/usr/bin/env bash

function congrats {
	echo "Congratulations! You got it correct!"
}

control=0

while [[ $control -eq 0 ]]
do
	echo "Make a guess on the number of files in current directory:"
	read response
	echo "You entered : $response"
	numfiles=(*)
	numfiles=${#numfiles[@]}
	echo "the number of files is: $numfiles"
	if [[ response -eq numfiles ]]
	then
		congrats
		control=1
	elif [[ response -gt numfiles ]]
	then
		echo "The number you guessed is too high"
	else
		echo "The number you guessed is too low"
	fi
done
