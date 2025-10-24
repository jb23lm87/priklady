#!/bin/bash
if [ -e a.txt ]; then
    echo existuje && rm a.txt
else
    echo neexistuje
fi
