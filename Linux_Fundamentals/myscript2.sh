#!/bin/bash
USER_NAME="Suhas"
echo "Welcome, $USER_NAME"
if [ $(date +%u) -gt 5 ]; then
    echo "It's weekend!"
else
    echo "It's a weekday."
fi