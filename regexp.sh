#!/bin/bash
# Script to demonstrate various regular expressions using grep and sed
# Basic string matching
# egrep is deprecated; using grep -E instead 
echo "Hello, world" | grep --colour=always "Hello"
echo "Hello, world" | grep -i --colour=always "HELLO"

echo "How are you?" | grep --colour=always "[oyu]"
echo "How are you?" | grep --colour=always "[aH]."
echo "How are you?" | grep --colour=always "[or][wu]"

echo "abcde01234567" | grep --colour=always "[c-k2-6]"
echo "abcde01234567" | grep --colour=always "[^c-k2-6]"

echo "aabc abc bc" | grep --colour=always "a*b"
echo "aabc abc bc" | grep --colour=always "a+b"
echo "aabc abc bc" | grep --colour=always "a?b"

echo "Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday" | grep --colour=always "(on|ues|rida)"
echo "Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday" | grep --colour=always "(Mon|Tues|Fri)"
echo "Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday" | grep --colour=always "..(i|es|n)"
echo "Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday" | grep --colour=always "...(i|es|n)day"
echo "Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday" | grep --colour=always " ..(i|es|n)day"

echo "Regular expressions" | grep --colour=always "s{2}"
echo "Regular expressions" | grep --colour=always "[esr]{1,3}"
echo "Regular expressions" | grep --colour=always "[a-z]{3,}"

echo "12:34" | sed -E 's/([0-9]{2})\:([0-9]{2})/It is \1 hours and \2 minutes/'