#!/bin/bash

# we can use the loop to iterate over lines in the file

read -p "Enter the file name :: " file

if [ -f "$file" ]; then
    echo "Reading the lines from $file ::: "
    while IFS= read -r line
    do
        echo "$line"
        sleep 2
    done < "$file"
else
    echo "File does not exist"
fi