#!/bin/bash

while [ -f ~/testfile ]
do
	echo "As of $(date) file exists."
	sleep 5
done
	echo "Deleted the file at time $(date)"
