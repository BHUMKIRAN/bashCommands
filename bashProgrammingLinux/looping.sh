# numeric comparison
# Inside [ ] or [[ ]]
# -eq  # Equal to
# -ne  # Not equal to
# -gt  # Greater than
# -ge  # Greater than or equal
# -lt  # Less than
# -le  # Less than or equal

# Examples
x=10
y=20

if [ $x -eq $y ]; then echo "Equal"; fi
if [ $x -ne $y ]; then echo "Not equal"; fi
if [ $x -lt $y ]; then echo "$x less than $y"; fi
if [ $x -le $y ]; then echo "$x less/equal $y"; fi

# tradition check
test 1 -gt 3 && echo "5 is greater than 3"
#modern bash
[ 5 -gt 3 ] && echo "5 is greater than 3"

#check exit status basic if-else

if [ $? -eq 0 ]; then
    echo "Command executed successfully"
else
    echo "Command failed"
fi

# if-elif-else

if [ $x -gt $y ]; then
    echo "$x is greater than $y"
elif [ $x -lt $y ]; then
    echo "$x is less than $y"
else
    echo "$x is equal to $y"
fi

# while loop
i=1
while [ $i -le 5 ]; do
    echo "Iteration $i"
    i=$((i + 1))
done

# And/Or/Not

# && - and
# || - or
# ! - not


# Over list of strings
for color in red green blue yellow; do
    echo "Color: $color"
done

# Over numbers using brace expansion
for i in {1..10}; do
    echo "Number: $i"
done

# With step (bash 4+)
for i in {1..10..2}; do
    echo "Odd: $i"
done

# Over files (wildcard expansion)
for file in *.txt; do
    echo "Processing $file"
    wc -l "$file"
done

# Over command output
for user in $(cut -d: -f1 /etc/passwd); do
    echo "User: $user"
done

# Using array
fruits=("apple" "banana" "orange" "grape")
for fruit in "${fruits[@]}"; do
    echo "I like $fruit"
done

# until loop
i=1
until [ $i -gt 5 ]; do
    echo "Iteration $i"
    i=$((i + 1))
done