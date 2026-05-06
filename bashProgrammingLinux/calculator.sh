#!/bin/bash

# Colors for UI
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

clear
echo -e "${BLUE}=====================================${NC}"
echo -e "${BLUE}      INTERACTIVE CALCULATOR        ${NC}"
echo -e "${BLUE}=====================================${NC}"
echo ""

# Get numbers
read -p "Enter first number: " num1
read -p "Enter second number: " num2

# Validate input (basic check)
if ! [[ "$num1" =~ ^-?[0-9]+$ ]] || ! [[ "$num2" =~ ^-?[0-9]+$ ]]; then
    echo -e "${RED}Error: Please enter valid numbers only!${NC}"
    exit 1
fi

# Menu for operation
echo ""
echo "Select operation:"
echo "1) Addition (+)  2) Subtraction (-)"
echo "3) Multiplication (*)  4) Division (/)"
echo "5) Modulus (%)"
read -p "Enter choice [1-5]: " choice

# Perform calculation
case $choice in
    1)
        result=$((num1 + num2))
        operation="+"
        ;;
    2)
        result=$((num1 - num2))
        operation="-"
        ;;
    3)
        result=$((num1 * num2))
        operation="*"
        ;;
    4)
        if [ $num2 -eq 0 ]; then
            echo -e "${RED}Error: Division by zero!${NC}"
            exit 1
        fi
        result=$((num1 / num2))
        operation="/"
        ;;
    5)
        if [ $num2 -eq 0 ]; then
            echo -e "${RED}Error: Modulus by zero!${NC}"
            exit 1
        fi
        result=$((num1 % num2))
        operation="%"
        ;;
    *)
        echo -e "${RED}Invalid choice!${NC}"
        exit 1
        ;;
esac

# Display result
echo ""
echo -e "${GREEN}=====================================${NC}"
echo -e "${GREEN}           RESULT                    ${NC}"
echo -e "${GREEN}=====================================${NC}"
echo -e "${YELLOW}$num1 $operation $num2 = $result${NC}"
echo -e "${GREEN}=====================================${NC}"

# Ask to save result
read -p "Save result to file? (y/n): " save_choice
if [[ $save_choice == "y" || $save_choice == "Y" ]]; then
    echo "$(date): $num1 $operation $num2 = $result" >> calculator_history.txt
    echo -e "${GREEN}Result saved to calculator_history.txt${NC}"
fi