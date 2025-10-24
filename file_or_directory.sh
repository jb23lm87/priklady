#!/usr/bin/bash
# Skript na testovanie existencie súborov a adresárov v aktuálnom priečinku
# Pre každý súbor a adresár v aktuálnom priečinku vypíše, či exist
# uje ako súbor alebo adresár
for item in *; do
    if [ -f "${item}" ]; then
        echo "File \"${item}\" exists"
    fi
    if [ -d "${item}" ]; then
        echo "directory \"${item}\" exists"
    fi
done