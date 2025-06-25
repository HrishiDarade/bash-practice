#!/bin/bash

read -p "Enter the word: " str
rev=$(echo "$str" | rev )

if [ $str == $rev ]
then
	echo "palindrome"
else
	echo "not palindrome"
fi
