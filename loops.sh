#!/bin/bash

for (( num=$2; num<=$3; num++ ))
do
  rmdir "$1$num"
done
