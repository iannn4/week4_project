#!/usr/bin/env bash
# File: gessingame.sh

function getFileNumber {
	local number_of_files=$(ls -1 | wc -l)
	echo $number_of_files
}

correct=0
number=$(getFileNumber)

while [[ $correct -eq 0 ]]
do
	echo "How many files are in this directory? Type in a number and then press Enter:"
	read response
	if [[ $response -eq $number ]]
	then
		correct=1
		echo "That's right! You said $response and there are $number files!"
	elif [[ $response -lt $number ]]
	then
		echo "Wrong answer! Your guess is too Low. Try again!"
	else
		echo "Wrong answer! Your guess was too high. Try again!"
	fi
done
