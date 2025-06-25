#!/bin/bash

read -p "Enter the command to check present or not: " cmd

if command -v $cmd
then
	echo "$cmd is available"
else
	echo "$cmd is not available"
fi
