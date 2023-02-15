#!/bin/bash

# conditional prompts
# Stanley L. Ferguson III
# 14 Feb 2023
# prompt will run based on the given conditions.

conditions=("remo" "zoom" "canvas")
while true; do
    echo "which file are you looking for"
    read name
    if [ -f "$name" ]; then
        echo "file exists"
        break
    else
        echo "file not found creating a new file"
        touch $name
        break
    fi
done 