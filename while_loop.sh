#!/bin/bash


echo "----Print even numbers----"
num=0

while [[ $num -le 10 ]]
do
	if (( num % 2 == 0 )); then
	  echo $num
	fi
	(( num++ ))
done

echo "----------------------------------------------------------------------------------------"

echo "----Print odd numbers----"
num=0			# we can reassign the variable 

while [[ $num -le 10 ]]
do
	if (( num % 2 != 0 )); then
		echo $num
	fi
	(( num++ ))
done 

echo "----------------------------------------------------------------------------------------"


