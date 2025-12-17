#!/bin/bash

# String operations

read -p "Enter the String: " str


echo "===========String Operations==========="

echo "Choose the string option (1-15)"
echo "1. Original string"
echo "2. Length of string"
echo "3. Check Empty / Non-empty string"
echo "4. Lowercase"
echo "5. Uppercase"
echo "6. Capitlize first char"
echo "7. Substring extaction"
echo "8. String comparision"
echo "9. Lexcicographical comparison"
echo "10. Check Substring"
echo "11. Replace Substring"
echo "12. Regex Match"
echo "13. Split string into Array"
echo "14. Reverse String"
echo "15. "

echo "--------------------------------------------------------"

read -p "Choose the above Option :: " ch

case $ch in 
    1)
        echo "Original string is: $str"
        ;;
    
    2)
        echo "Length of string"
        echo "The length of $str is :  ${#str}"

        ;;

    3) 
        echo "Checking the empty or non empty string "

        [ -z "$str" ] && echo "String is EMPTY"

        [ -n "$str" ] && echo "String is NOT empty"
        
        ;;

    4) 
        echo " Converting string to lowercase "

        echo "After Lowercase of $str ::  ${str,,} "

        ;;

    5)
        echo " Converting string to uppercase "
        
        echo "After Uppercase of $str ::  ${str^^}"

        ;;
    
    6) 
        echo " Capitalizing first character of the string " 

        echo "After capalitizing the first letter ::  ${str^}"

        ;;

    7)
        echo " Substring Extection "

        echo "Substring (0:6)  :  ${str:0:6}"       # it means the index form 0 to 5 will be printed 6th index will not include

        echo "Substring (from 3)    :  ${str:3}" 

        ;;

    8)
        echo " String comparison "
        
        read -p "Enter another string to compare :: " str2

        if [[ "$str" == "$str2" ]]; then
            echo "Strings '$str' and '$str2' are Equal"
        else
            echo "Strings '$str' and '$str2' are not Equal"
        fi

        ;;

    9) 
        echo " Lexicographical comparison "
        read -p "Enter another string to compare :: " str3

        if [[ "$str" < "$str3" ]]; then
            echo " '$str' comes BEFORE '$str3' "
        else
            echo " '$str' comes AFTER '$str3' "
        fi

        ;;
    
    10)
        echo " Check substring "
        read -p "Enter another string to check :: " str4

        if [[ "$str" == *"$str4"* ]]; then
            echo "'$str4' is a substring of the '$str'"
        else
            echo "'$str4' is not a substring of the '$str'"
        fi       

        ;;

    11)
        echo " Replace Substring "
        read -p "Enter the string to replace :: " str5
        read -p "Enter the new substring :: " str6

        echo "Replace first match   : ${str/$str5/$str6}"

        echo "Replace all matches   : ${str//$str5/$str6}"

        ;;

    12)
        echo " Regex match "

        if [[ "$str" =~ ^[a-zA-Z]+$ ]]; then
            echo " '$str' is a alphabitical string contains only words "
        
        elif [[ "$str" =~ ^[0-9_]+$ ]]; then
            echo " '$str' is a numbers only string"
        
        elif [[ "$str" =~ ^[a-zA-Z0-9_]+$ ]]; then
            echo "'$str' is Alphanumeric string contains both numbers and words"

        else
            echo " '$str' contains special characters"
        fi

        ;;
    
    13)
        echo " Split string into array "
        IFS=' ' read -ra arr <<< "$str"             # IFS :: internal field separator

        for word in "${arr[@]}"; do                 # loop through each element in array
            echo " -> $word"
        done

        echo "Number of elements in arr     :: ${#arr[@]}"
        echo "Get the first element in arr  :: ${arr[0]}"
        echo "Get the last element in arr   :: ${arr[-1]}"

        ;;
    
    14)
        echo " Reverse the String "

        reverse=$(echo "$str" | rev)
        echo "Reversed string of '$str' is ::   $reverse"

        ;;

    15) 
        echo " Trim leading and trailing spases "
        trimmed="${str#"${str%%[![:space:]]*}"}"
        trimmed="${trimmed%"${trimmed##*[![:space:]]}"}"


        ;;

    *) 
        echo "Invalid Option. Please Select Between 1 to 15 THANK YOU" 
        ;;



esac