//variables 

name="ram"
age=18

echo "My name is $name"
echo "My age is $age"

# Strings
greeting="Hello"
name="Bob"
full_greeting="${greeting}, ${name}!"  # Concatenation
echo $full_greeting  # Output: Hello, Bob!

# Numbers (bash handles integers, not floats)
num1=10
num2=20
sum=$((num1 + num2))  # Arithmetic with $(( ))
echo $sum  # Output: 30

# Other arithmetic operations
echo $((num1 - num2))  # -10
echo $((num1 * num2))  # 200
echo $((num2 / num1))  # 2 (integer division)
echo $((num2 % num1))  # 0 (modulo)

# Increment/decrement
counter=0
counter=$((counter + 1))
((counter++))  # Also works
echo $counter  # Output: 2

# special variables

echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "All arguments: $@"
echo "Number of arguments: $#"
echo "Last command exit status: $?"
echo "Process ID of this script: $$"

//to run project type --> bash filename

# read-only variables
readonly PI=3.14159
echo "Value of PI: $PI"

# enviroment vs local variables

# Local variable (only in this script)
local_var="Only in this script"

# Environment variable (available to child processes)
export GLOBAL_VAR="Available everywhere"

# Common environment variables (already set)
echo $HOME      # Your home directory
echo $USER      # Your username
echo $PATH      # Command search path
echo $PWD       # Current working directory
echo $OLDPWD    # Previous working directory


#Command Substitution

# Example: Get the current date
date=$(date +%Y-%m-%d)
echo "Current date: $date"




