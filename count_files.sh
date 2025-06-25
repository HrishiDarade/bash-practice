#!/bin/bash

read -p "Enter the directory path: " path

if [ -d "$path" ]
then
	count=$(ls "$path" | wc -l)
	echo "Number of files in $path dir : $count "
else
	echo "Directory not found"
fi
