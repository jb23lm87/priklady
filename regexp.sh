#!/bin/bash
echo "Hello, world" | egrep --colour=always "Hello"
echo "Hello, world" | egrep --colour=always "HELLO"
echo "Hello, world" | egrep -i --colour=always "HELLO"

echo "How are you?" | egrep --colour=always "[oyu]"
echo "How are you?" | egrep --colour=always "[aH]."
echo "How are you?" | egrep --colour=always "[or][wu]"

echo "abcde01234567" | egrep --colour=always "[c-k2-6]"
echo "abcde01234567" | egrep --colour=always "[^c-k2-6]"

echo "aabc abc bc" | egrep --colour=always "a*b"
echo "aabc abc bc" | egrep --colour=always "a+b"
echo "aabc abc bc" | egrep --colour=always "a?b"

echo "Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday" | egrep --colour=always "(on|ues|rida)"
echo "Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday" | egrep --colour=always "(Mon|Tues|Fri)"
echo "Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday" | egrep --colour=always "..(i|es|n)"
echo "Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday" | egrep --colour=always "...(i|es|n)day"
echo "Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday" | egrep --colour=always " ..(i|es|n)day"

echo "Regular expressions" | egrep --colour=always "s{2}"
echo "Regular expressions" | egrep --colour=always "[esr]{1,3}"
echo "Regular expressions" | egrep --colour=always "[a-z]{3,}"

echo "12:34" | sed -E 's/([0-9]{2})\:([0-9]{2})/It is \1 hours and \2 minutes/'
