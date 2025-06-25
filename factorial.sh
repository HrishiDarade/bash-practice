#!/bin/bash

read -p "Enter the number to calculate the factorial: " n

fact=1
for(( i=1; i<=n; i++ ))
do
	fact=$(( fact * i ))
done
echo "The factorial of the $n is $fact"
