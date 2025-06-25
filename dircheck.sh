#!/bin/bash

read -p "enter dir name;" dir

if [ -d $dir ]; then
	echo "$dir exist"
else
	echo "$dir does not exist"
fi
