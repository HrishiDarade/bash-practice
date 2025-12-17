#!/bin/bash

numbers=(1 2 4 6 13 42 56 23 78 96 333 564 675 754 434 3454 3433)
sum=0
len="${#numbers[@]}"

for n in "${numbers[@]}"
do
    sum=$(( sum + n ))
done

avg=$(( sum / len ))                # this will give integer answer

average=$(echo "$sum / $len" | bc -l) 

echo "Length of array      :: $len"
echo "Total sum is         :: $sum"
echo "Average is in int    :: $avg"
echo "Average with decimal :: $average"