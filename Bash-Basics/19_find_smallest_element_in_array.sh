#!/bin/bash

numbers=(1 2 4 6 13 42 56 23 78 96 333 564 675 754 434 3454 3433)
min="${numbers[0]}"

for n in "${numbers[@]}"
do 
    if (( n < min )); then
        min=$n 
    fi
done
echo "Smallest number in an array is :: $min"
