#!/bin/bash
# Script to read user age and check if the user is adult
echo "How old are you?"
read -r AGE
if [ "$AGE" -ge 18 ]; then
    echo "Your age is OK - Enter the site"
else
    echo "Your are too jung - go away"
fi