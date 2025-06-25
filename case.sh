#!/bin/bash

finished=0

while [ $finished -ne 1 ]
do
	echo "What is your Linux Distribution? "

	echo "1 - Arch"
	echo "2 - CentOS"
	echo "3 - Debian"
	echo "4 - Mint"
	echo "5 - Ubuntu"
	echo "6 - Exit the script."

	read distro;

	case $distro in
		1) echo "Arch is rolling release.";;
		2) echo "CentOS is popular on servers.";;
		3) echo "Debian is the community distribution.";;
		4) echo "Mint is popular on desktops and laptops.";;
		5) echo "Ubuntu is popular on both servers and computers.";;
		6) finished=1;;
		*) echo "you did not enter an approprite choice."
	esac
done
echo "Thank You"

