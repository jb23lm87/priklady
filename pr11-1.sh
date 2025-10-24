#!/bin/bash

echo "Creating html directory"
mkdir /home/$1/html
echo "<h1>$1's     Homepage</h1>" > /home/$1/html/index.html
