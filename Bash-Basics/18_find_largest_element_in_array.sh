#!/bin/bash

numbers=(1 2 4 6 13 42 56 23 78 96 333 564 675 754 434 3454 3433)

# finding largest element in an array


max=${numbers[0]}    #assuming the first num is max

for n in "${numbers[@]}"
do
    if (( n > max )); then
        max=$n
    fi 
done
echo "Largest element in an array is :: $max"