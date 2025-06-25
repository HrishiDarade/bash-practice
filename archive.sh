#!/bin/bash

read -p "Enter the archive options (tar/zip):: " archive

if [ $archive == "tar"  ]
then
	tar -czvf scripts.tar.gz *.sh
elif [ $archive == "zip"  ]
then
	zip scripts.zip *.sh
else
	echo "Invalid option choose tar or zip"
fi
