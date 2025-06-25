#!/bin/bash

echo " Enter two numbers: "
read a b
echo " Enter operation ( +, -, *, / ) "
read op

case $op in
	+) echo "Addition is : $(( a + b ))";;
	-) echo "Substraction is : $(( a - b ))";;
	\*) echo "Multiplication is : $(( a * b ))";;
	/) echo "Division is : $(( a / b ))";;
	*) echo "Invalid operation"
esac
