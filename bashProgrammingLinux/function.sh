# basic 
# Method 1: Traditional
function greet() {
    echo "Hello, $1!"
}

# Method 2: Simplified (preferred)
greet() {
    echo "Hello, $1!"
}

# Call the function
greet "Alice"  # Output: Hello, Alice!

# function parameter 

#!/bin/bash

# Parameters are accessed via $1, $2, ...
# $@ = all parameters, $# = number of parameters

function process_user() {
    local name=$1        # local variable (function scope)
    local age=$2
    local city=$3
    
    echo "Name: $name"
    echo "Age: $age"
    echo "City: $city"
    echo "Total parameters: $#"
    echo "All parameters: $@"
}

process_user "John" 30 "Boston"

# Output:
# Name: John
# Age: 30
# City: Boston
# Total parameters: 3
# All parameters: John 30 Boston


## return values from the function 
# Method 1: Return exit code (0-255)
is_even() {
    local num=$1
    if (( num % 2 == 0 )); then
        return 0  # True/success
    else
        return 1  # False/failure
    fi
}

# Use the function
if is_even 10; then
    echo "10 is even"
else
    echo "10 is odd"
fi

# Method 2: Echo output (command substitution)
get_username() {
    echo "john_doe"
}

username=$(get_username)
echo "Username: $username"

# Method 3: Return multiple values via global variables or references
calculate_stats() {
    local a=$1
    local b=$2
    
    # Using global variables (not recommended)
    SUM=$((a + b))
    PRODUCT=$((a * b))
}

calculate_stats 5 3
echo "Sum: $SUM, Product: $PRODUCT"

# Better: Use nameref (Bash 4.3+)
calculate_stats_v2() {
    local -n sum_ref=$1
    local -n product_ref=$2
    local a=$3
    local b=$4
    
    sum_ref=$((a + b))
    product_ref=$((a * b))
}

calculate_stats_v2 result_sum result_product 5 3
echo "Sum: $result_sum, Product: $result_product"