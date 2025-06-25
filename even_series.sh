#!/bin/bash

read -p "enter starting number: " start
read -p "enter ending number: " end

for (( i=start; i<=end; i++  )) ; do
	if (( i % 2 == 0 )); then
		echo "$i"
	fi
done
