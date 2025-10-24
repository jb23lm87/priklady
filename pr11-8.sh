#!/bin/bash
SECRET="top secret"
echo "Enter password"
read -r PASSWORD
while [ "$PASSWORD" != "$SECRET" ]; do
    echo "Sorry, try again"
    read -r PASSWORD
done
echo "Congratulation! you know the secret"
