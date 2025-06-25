 #!/bin/bash

myname="Hrishi"
myage="22"

echo "Hello my name is $myname."
echo "I am $myage years old."

<<comment
this is the 
multiline comment 
comment

echo "if i need to print any command in it i can do ==== $(date)"

echo "user input: "
read user
echo "input is : $user"
