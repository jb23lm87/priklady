#!/bin/bash
# Script to create a user and set up a basic homepage
# Usage: ./pr11-1.sh username
echo "Creating html directory"
mkdir /home/$1/html
echo "<h1>$1's     Homepage</h1>" > /home/$1/html/index.html