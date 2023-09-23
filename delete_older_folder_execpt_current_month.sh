#!/bin/bash
target_file="/c/Users/margr/Aravind"
current_date=$(date +%Y%m)
for files in "$target_file"/*; do
    file_date=$(date -r "$files" +%Y%m)
    if [ -f "$files" ]; then
        echo "the file exist-"$files""
        if [ "$current_date" != "$file_date" ];then
            rm "$files"
            echo "file is deleted-"$files""
        fi
    else
        echo "files are not available in older dates"
    fi

done
