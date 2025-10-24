#!/bin/bash
# Test existence of a file and remove it if it exists
if [ -e a.txt ]; then
    echo existuje && rm a.txt
else
    echo neexistuje
fi
