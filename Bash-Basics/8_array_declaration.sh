#!/bin/bash

fruits=("Mango" "Banana" "Orange" 1)  #declearing the array

echo "All elements in the fruits array are: ${fruits[@]}"

echo "First element in the fruits array is: ${fruits[0]}"

#last_index=$(( ${#fruits[@]} - 1 ))

echo "Last element in the fruits array is: ${fruits[-1]}"

echo "Length of an array: ${#fruits[@]}"      #     ${# } == count

# want length of the specific element in the array (string length)
echo "Length of the first element in the array is: ${#fruits[0]}"     # returns the length of Mango :: 5

