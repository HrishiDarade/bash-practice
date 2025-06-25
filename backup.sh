#!/bin/bash

#check to makesure the user has entered the exactly two arguments
if [ $# -ne 2 ]
then
	echo " Usage: backup.sh <source_dir> <target_dir> "
	echo " Please try again "
	exit 1
fi

#check to see if rsync is installed
if ! command -v rsync > /dev/null 2>&1
then
	echo " This script requires rsync tobe installed. "
	echo " Please use your distribution package manager to install it and try again. "
	exit 2
fi

#capture the current date, and store it in the format yyyy-mm-dd
current_date=$(date +%Y-%m-%d)

rsync_options="-avb --backup-dir $2/$current_date --delete --dry-run"     #--dry-run option is just give you the simulation of what wwe are going to do so it does not make any changes

$(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log
