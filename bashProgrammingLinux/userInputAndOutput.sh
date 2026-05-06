# #read use input and store in variable and print

# read -p "Enter your name: " name
# echo "Hello, $name!"

# //silent input

# read -s -p "Enter your password: " password
# echo "Password: $password"

# //timeout 

# read -t 5 -p "Enter your  within 5 seconds: " name
# echo "Name: $name"

# //number of chracter

# read -n 1 -p "Press any key to continue... " key
# echo "You pressed $key"

# //array input

# read -a colors -p "Enter some colors: "
# echo "Colors: ${colors[@]}"


## output formatting 

echo "kiran khatri"

#echo without new line
echo -n "kiran khatri"

# enabe escape sequences
echo -e "Line 1\nLine 2"  # \n = newline
echo -e "Column1\tColumn2"  # \t = tab

# color
echo -e "\033[1;31mThis is red\033[0m"
echo -e "\033[1;32mThis is green\033[0m"
echo -e "\033[1;33mThis is yellow\033[0m"
echo -e "\033[1;34mThis is blue\033[0m"
echo -e "\033[1;35mThis is magenta\033[0m"
echo -e "\033[1;36mThis is cyan\033[0m"
echo -e "\033[1;37mThis is white\033[0m"


# print for formatted ouput

printf "%s is %d years old.\n" "John" 30
printf "%-10s %-10s %-10s\n" "Name" "Age" "City"

## output redirection 

# Redirect stdout to file (> overwrite, >> append)
echo "Hello" > output.txt  # Overwrites
echo "World" >> output.txt  # Appends

# Redirect stderr (2>)
ls nonexistent 2> error.log

# Redirect both stdout and stderr
command > output.txt 2>&1  # Method 1
command &> output.txt      # Method 2 (Bash 4+)

# Suppress output entirely
command > /dev/null 2>&1

# Pipe output to another command
ls -la | grep ".txt"
ps aux | grep "bash" | wc -l

# Here documents (multi-line input)
cat > file.txt << EOF
Line 1
Line 2
Line 3
EOF

