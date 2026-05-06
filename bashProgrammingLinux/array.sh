# Creating arrays - multiple methods

# Method 1: Direct assignment
fruits=("apple" "banana" "orange" "grape")

# Method 2: Index assignment
colors[0]="red"
colors[1]="green"
colors[2]="blue"

# Method 3: From command output
files=($(ls *.txt))

# Method 4: Using declare
declare -a numbers=(1 2 3 4 5)

# Accessing array elements
echo ${fruits[0]}      # Output: apple
echo ${fruits[2]}      # Output: orange

# Get all elements
echo ${fruits[@]}       # Output: apple banana orange grape
echo ${fruits[*]}       # Output: apple banana orange grape

# Get array length
echo ${#fruits[@]}      # Output: 4
echo ${#fruits[*]}      # Output: 4

# Get length of specific element
echo ${#fruits[1]}      # Output: 6 (length of "banana")

# Array slicing (start:length)
echo ${fruits[@]:1:2}   # Output: banana orange
echo ${fruits[@]:2}     # Output: orange grape (from index 2 to end)

# Adding elements
fruits+=("mango")       # Append to array
fruits[5]="kiwi"        # Add at specific index

# Removing elements
unset fruits[2]         # Remove element at index 2
# Note: This leaves a hole in the array

# Re-index array after deletion
fruits=("${fruits[@]}")  # Re-indexes to remove holes

# Looping through arrays
for fruit in "${fruits[@]}"; do
    echo "I like $fruit"
done

# Loop with index
for i in "${!fruits[@]}"; do
    echo "Index $i: ${fruits[$i]}"
done


# array operation

#!/bin/bash

# Example 1: Command line argument processing with arrays
args=("$@")  # Store all arguments in array

echo "Total arguments: ${#args[@]}"
echo "All arguments: ${args[@]}"

# Example 2: File list management
declare -A file_checksums

# Calculate MD5 for all .sh files
for file in *.sh; do
    if [[ -f $file ]]; then
        checksum=$(md5sum "$file" | cut -d' ' -f1)
        file_checksums["$file"]=$checksum
    fi
done

# Display results
for file in "${!file_checksums[@]}"; do
    echo "$file: ${file_checksums[$file]}"
done

# Example 3: Stack implementation using array
stack=()

push() {
    stack+=("$1")
    echo "Pushed: $1"
}

pop() {
    if [[ ${#stack[@]} -eq 0 ]]; then
        echo "Stack is empty"
        return 1
    fi
    local top=${stack[-1]}
    unset stack[-1]
    echo "Popped: $top"
}

peek() {
    echo "Top: ${stack[-1]}"
}

# Test the stack
push "first"
push "second"
push "third"
peek
pop
pop
pop

# Example 4: Unique values from list
numbers=(5 2 8 2 9 1 5 8 3)
unique=($(printf "%s\n" "${numbers[@]}" | sort -u))

echo "Original: ${numbers[@]}"
echo "Unique: ${unique[@]}"