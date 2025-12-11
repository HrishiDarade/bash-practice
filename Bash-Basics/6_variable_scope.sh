#!/bin/bash

outside_variable="this is outside the function"

my_function() {
    local inside_variable="this is inside the functuon"

    echo "Accessing inside variable: $inside_variable"
    
    echo "Accessing outside variable from inside the function: $outside_variable"


}
my_function

echo "Accessing the inside varible from outside of the function: $inside_variable"