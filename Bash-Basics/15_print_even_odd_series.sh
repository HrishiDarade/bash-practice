#!/bin/bash

read -p "Enter the starting of the number of serise :: " n
read -p "Enter the ending of the number of serise   :: " m

# checking if the input is valid numbers 

if ! [[ "$n" =~ ^[0-9]+$ && "$m" =~ ^[0-9]+$ && "$n" -ge 0 && "$m" -gt "$n" ]]; then
    echo "Invalid input:  please enter the valid numbers ( positive numbers ) and starting number must be less than ending number"
    exit 1
fi

echo "--------------------------------------------------------------------------"

echo "Even numbers between $n and $m  :: "
for ((i=n; i<=m; i++))
do 
    if (( i % 2 == 0 )); then
        echo -n "$i "
    fi
done
echo

echo "--------------------------------------------------------------------------"

echo "Odd numbers between $n and $m  :: "
for ((i=n; i<=m; i++))
do
    if (( i % 2 != 0 )); then 
        echo -n "$i "
    fi
done
echo
