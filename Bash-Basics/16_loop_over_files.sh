#!/bin/bash 

# iterating thorough all the files in the current dir

for file in * 
do
    if [[ -f "$file" ]]; then
        echo "$file"
    fi
done

# iterrating through particular files 

echo "--------------------------------------------------"

for logfile in /var/log/*.log
do 
    echo "Log files :: $logfile"
    stat "$logfile"
done

echo "--------------------------------------------------"

for txtfile in *.txt
do 
    echo "txt file :: $txtfile"
done 