#!/bin/bash

release=/etc/os-release
logfile=~/updater.log
errorfile=~/update_error.log

check_exit_code() {

	if [ $? -ne 0 ]
	then
		echo "Error occurred check $errorfile file"
	fi
}

if grep -q "Ubuntu" $release
then
	sudo apt update 1>>$logfile 2>>$errorfile
	check_exit_code
fi

if grep -q "Arch" $release
then
	sudo pacman -Syu 1>>$logfile 2>>$errorfile
	check_exit_code
fi
