# case $variable in
#     pattern1)
#         commands
#         ;;
#     pattern2)
#         commands
#         ;;
#     *)
#         # Default case (like else)
#         commands
#         ;;
# esac

#!/bin/bash

# Simple menu example
read -p "Enter your choice (start/stop/restart/status): " action

case $action in
    start)
        echo "Starting service..."
        systemctl start myservice
        ;;
    stop)
        echo "Stopping service..."
        systemctl stop myservice
        ;;
    restart)
        echo "Restarting service..."
        systemctl restart myservice
        ;;
    status)
        echo "Checking status..."
        systemctl status myservice
        ;;
    *)
        echo "Invalid option: $action"
        echo "Valid options: start, stop, restart, status"
        exit 1
        ;;
esac

#!/bin/bash

# Multiple patterns
read -p "Are you sure you want to delete? (yes/no/y/n): " response

case $response in
    yes|y|Y|YES|Yes)
        echo "Deleting files..."
        rm -rf *
        ;;
    no|n|N|NO|No)
        echo "Operation cancelled"
        ;;
    *)
        echo "Please answer yes or no"
        ;;
esac

# Wildcard patterns
read -p "Enter filename: " filename

case $filename in
    *.txt)
        echo "Text file"
        cat "$filename"
        ;;
    *.jpg|*.png|*.gif)
        echo "Image file"
        display "$filename" 2>/dev/null || echo "No image viewer found"
        ;;
    *.sh)
        echo "Shell script"
        bash -n "$filename"  # Syntax check
        ;;
    *)
        echo "Unknown file type"
        ;;
esac

# Pattern with character classes
read -p "Enter a single character: " char

case $char in
    [a-z])
        echo "Lowercase letter"
        ;;
    [A-Z])
        echo "Uppercase letter"
        ;;
    [0-9])
        echo "Digit"
        ;;
    *)
        echo "Special character or multiple characters"
        ;;
esac