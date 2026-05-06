#!/bin/bash

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Usage
echo -e "${RED}Error: Something went wrong${NC}"
echo -e "${GREEN}Success: Operation completed${NC}"
echo -e "${YELLOW}Warning: Low disk space${NC}"
echo -e "${BLUE}Info: Processing data${NC}"

# Background colors
BG_RED='\033[41m'
BG_GREEN='\033[42m'
echo -e "${BG_RED}${WHITE}URGENT${NC}"