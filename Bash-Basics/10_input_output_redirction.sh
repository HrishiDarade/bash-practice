#!/bin/bash

# --------- Output Redirection ------------
# >  : redirect the stdout to a file and overwrite the existing 
# >> : redirect the stdout to a file and append the new 

ls > test.txt   

date >> test_append.txt


# ----------- Input Redirection -----------
# <  : redirect the files content as input to the command

cat < test.txt 


# ----------- Error Redirection -----------
# 2> : redirect the stderr to a file and overwrite the existing
# 2>>: redirect the stderr to a file and append the latest line

ls non_existing_file 2> error.log

ls "$RANDOM" 2>> error_append.log


# ------------ Combined Rediection -----------
# &>  : redirect both stdout and stderr to a file (overwrite)
# &>> : redirect both stdout and stderr to a file (append)

ls /dev &> combined.log

ls "/usr/$RANDOM" &>> combined_append.log


# ----------- Pipe Redirection -------------
# |   : redirect the output of the one command as the input to another 

ls | grep "\.txt"

ls | wc -l


# ----------- Suppress Output --------------

# /dev/null  : it is the null device file, any data written to it is immediately deleted

cat hello_world.test 2> /dev/null       # discarding the stderr

ls hello &> /dev/null           # discarding stderr and stdout


# ---------- tee command -------------------
# tee  :  it displays the output on the terminal and also wirte it in the file 

ls | tee tee.txt

date | tee -a date_tee_append.txt     # -a appends the output

