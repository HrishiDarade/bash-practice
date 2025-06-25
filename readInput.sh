#!/bin/bash

read -p "Enter userName: " username

echo "you have given the input $username by using the command read -p "

echo "argument 0 it it the file name itself: $0"

echo "argument 1 is given after the file name during the command: $1"

echo "argument 2 is followed by arg1 and so on: $2"
