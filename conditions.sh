#!/bin/bash

read -p "enter the number: " n

if (( n < 0 )); then
  echo " $n is negative"
elif (( n == 0 )); then
  echo "$n is 0"
else
  echo "$n is positive"
fi
