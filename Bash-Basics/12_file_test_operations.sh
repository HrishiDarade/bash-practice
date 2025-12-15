#!/bin/bash

read -p "Enter the file path: " file

#check if it is file or dir
if [ -d "$file" ]; then                 
    echo "It is a directory"

elif [ -f "$file" ]; then
    echo "$file : File exists and it is regular file"

    #check if the file is executable
    if [ -x "$file" ]; then
        echo "$file : File is executable"
    else
        echo "$file : File is not executable"
    fi

    # check if the file is readable
    if [ -r "$file" ]; then
        echo "$file : File is readable"
    else
        echo "$file : File is not readable"
    fi

    # check if the file is writable
    if [ -w "$file" ]; then
        echo "$file : File is writable "
    else
        echo "$file : File is not writable"
    fi

    #check if file is empty
    if [ -s "$file" ]; then
        echo "$file : file is not empty"
        echo "Content inside is:: "
        cat "$file"
    else
        echo "$file : File is empty"
    fi

    #check the permissions of the file
    echo "Detail Permission view of the file : "
    ls -la $file


# check if the file is character device file by :: -c
elif [ -c "$file" ]; then
    echo "$file : File is Character device file"       # files like /dev/null
    echo "Detail Permission view of the file : "
    ls -la $file

#check if the file is block device file by :: -b
elif [ -b "$file" ]; then
    echo "$file : File is Block device file"            # files like /dev/sda 
    echo "Detail Permission view of the file : "
    ls -la $file


else
    echo "$file : File does not exists"
fi
