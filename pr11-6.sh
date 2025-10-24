#!/bin/sh
# Script to read user happiness and respond accordingly
echo "Are you happy?"
read -r ANSWER
case "$ANSWER" in
"yes" | "y") echo "you are happy man" ;;
"no" | "n") echo "what's wrong?" ;;
*) echo "ehm... sorry?" ;;
esac