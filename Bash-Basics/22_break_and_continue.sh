#!/bin/bash

for i in {1..10}
do 
    if (( i == 5 )); then
        echo "Skipping number 5"
        continue                    # continue :: skips the current iteration and moves to the next
    fi

    if (( i == 8 )); then
        echo "Breaking the loop at 8"   # break :: exits the loop if the condition is true
        break
    fi
    echo "$i"
done
