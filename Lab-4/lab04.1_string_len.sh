#!/bin/bash
# Lab 4.1: Bash string length
# Date: 2023 Jan 16
# Github: https://github.com/UODA-CSE/cse407l_unix-lab

str1="Hello World"
str2="Dhaka is the capital of Bangladesh. It is a beautiful city."

echo "String 1=$str1"
echo "String 2=$str2"

# Example-1: Using the‘#’ symbol to count the length of a string
echo "Example-1: Using the ‘#’ symbol to count the length of a string"
echo "Length of str1=${#str1}"
echo "Length of str2=${#str2}"

# Example-2: Using the ‘expr’ command to count the length of a string
echo "Example-2: Using the ‘expr’ command to count the length of a string"
echo "Length of str1=$(expr length "$str1")"
echo "Length of str2=$(expr length "$str2")"

# Example-3: Using the 'expr' command to count the length of a string from user input
echo "Example-3: Using the 'expr' command to count the length of a string from user input"
echo "Enter a string: "
read str3
echo "Length of str3=$(expr length "$str3")"

# Example-4: Using the ‘wc’ command to count the length of a string
echo "Example-4: Using the ‘wc’ command to count the length of a string"
echo "Length of str1=$(echo -n "$str1" | wc -c)"
echo "Length of str2=$(echo -n "$str2" | wc -c)"


# Example-5: Using the ‘wc’ command to count the length of a string from user input
echo "Example-5: Using the ‘wc’ command to count the length of a string from user input"
echo "Enter a string: "
read str4
echo "Length of str4=$(echo -n "$str4" | wc -c)"

# Example-6: Using the ‘awk’ command to count the length of a string
echo "Example-6: Using the ‘awk’ command to count the length of a string"
echo "Length of str1=$(echo "$str1" | awk '{print length}')"
echo "Length of str2=$(echo "$str2" | awk '{print length}')"

# Example-7: Using the ‘awk’ command to count the length of a string from user input
echo "Example-7: Using the ‘awk’ command to count the length of a string from user input"
echo "Enter a string: "
read str5
echo "Length of str5=$(echo "$str5" | awk '{print length}')"

# Example-8: Using the ‘printf’ command to count the length of a string
echo "Example-8: Using the ‘printf’ command to count the length of a string"
echo "Length of str1=$(printf "%s" "$str1" | wc -c)"
echo "Length of str2=$(printf "%s" "$str2" | wc -c)"

# Example-9: Using the ‘printf’ command to count the length of a string from user input
echo "Example-9: Using the ‘printf’ command to count the length of a string from user input"
echo "Enter a string: "
read str6
echo "Length of str6=$(printf "%s" "$str6" | wc -c)"
