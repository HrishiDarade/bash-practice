#!/bin/bash

echo "Bash script that uses a for loop to print numbers from 0 to 10."

for ((i=0; i<=10; i++))
do 
    echo $i                 # this will print it every number on the new line
done

# for printing the numbers in the single line 

for ((i=0; i<=10; i++))
do 
    echo -n "$i "
done
echo