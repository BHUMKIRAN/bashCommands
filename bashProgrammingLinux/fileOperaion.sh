# File existence and type
-e file   # File exists
-f file   # File exists and is regular file
-d file   # File exists and is directory
-s file   # File exists and is not empty

# File permissions
-r file   # File is readable
-w file   # File is writable
-x file   # File is executable

# File comparisons
file1 -nt file2  # file1 is newer than file2
file1 -ot file2  # file1 is older than file2
file1 -ef file2  # file1 and file2 are the same file

# Examples
if [ -f "/etc/passwd" ]; then
    echo "Password file exists"
fi

if [ -d "$HOME/Documents" ]; then
    echo "Documents directory exists"
fi

if [ -w "/etc/hosts" ]; then
    echo "You can write to hosts file"
else
    echo "You need sudo to edit hosts"
fi