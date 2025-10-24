#!/usr/bin/bash
for item in *; do
    if [ -f "${item}" ]; then
        echo "File \"${item}\" exists"
    fi
    if [ -d "${item}" ]; then
        echo "directory \"${item}\" exists"
    fi
    
    
done


