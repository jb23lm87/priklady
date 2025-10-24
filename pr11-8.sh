#!/bin/bash
# Script to prompt for a password until the correct one is entered
SECRET="top secret"
echo "Enter password"
read -r PASSWORD
while [ "$PASSWORD" != "$SECRET" ]; do
    echo "Sorry, try again"
    read -r PASSWORD
done
echo "Congratulation! you know the secret"