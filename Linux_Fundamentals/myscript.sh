#!/bin/bash
# My first script
echo "Hello, $USER"
echo "Today is $(date)"
echo "Number of user login: $(who | wc -l)"

# output 
# Hello, suhas
# Today is Tue Aug 12 08:40:07 UTC 2025
# Number of user login: 1