#!/usr/bin/env bash
SLOVO=student
COUNTER=0
#file read ... "IFS" (Internal Field Separator)
while IFS= read -r line; do
    # if string contains
    if [[ "$line" == *"$SLOVO"* ]]; then
        echo "$line contains: $SLOVO"
        ((COUNTER++))
    fi
done </etc/passwd
echo "Počet riadkov obsahujúcich $SLOVO je $COUNTER"
