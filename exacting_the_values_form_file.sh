#!/bin/bash
file_path=/c/Users/margr/Aravind/hello
if [ -f "$file_path" ]; then
    echo "file exist"
    counter=1
    while IFS= read -r line; do
        aravind=$(echo "$line"|cut -d "=" -f 2)
        echo "$aravind"
        ((counter++))
    done < "$file_path"
fi
