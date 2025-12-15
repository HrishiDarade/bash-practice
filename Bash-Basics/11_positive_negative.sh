#!/bin/bash

# check if the number is positive or negative or zero

echo "Enter the number: "
read num

if (( num > 0 )); then
    echo "$num is Positive"
elif (( num < 0 )); then 
    echo "$num is Negative"
else 
    echo "This is zero"
fi


echo "-----------------------------------------------------------------"


