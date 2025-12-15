# #!/bin/bash

# fibonacci() {
# 	local n=$1
# 	local a=0
# 	local b=1

# 	echo "Fibonacci series up to $n terms: "

# 	for (( i=0; i<n; i++ ))
# 	do
# 	  echo -n "$a "
# 	  fn=$(( $a + $b ))
# 	  a=$b
# 	  b=$fn
# 	done
# 	echo
# }
# read -p "enter the no of terms: " num
# fibonacci $num


a=0
b=1

for (( i=0; i<20; i++ ))
do
	echo "$a "
	c=$(( $a + $b ))
	a=$b
	b=$c
done

