#!/bin/bash

# Test whether the file exists
if [ ! -f "username.txt" ]; then
    echo "username.txt not found"
    exit 1
fi

# Check if it contains a Linux username (very simple check)
content=$(cat username.txt)

if [[ -z "$content" ]]; then
    echo "username.txt is empty"
    exit 1
fi

echo "OK"
exit 0
