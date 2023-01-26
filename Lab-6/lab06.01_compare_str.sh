#!/bin/bash
# Lab 6.1: Compare Strings
# Date: 2023 Jan 22
# Github: https://github.com/UODA-CSE/cse407l_unix-lab

strval1="Ubuntu"
strval2="Windows"

# Example-1: Compare two strings using "==" operator
echo "Example-1: Compare two strings using '==' operator"

echo "String 1: $strval1 and String 2: $strval2"

#Check equality two string variables

if [ $strval1 == $strval2 ]; then
  echo "Strings are equal"
else
  echo "Strings are not equal"
fi

#Check equality of a variable with a string value

if [ $strval1 == "Ubuntu" ]; then
  echo "Linux operating system"
else
  echo "Windows operating system"
fi

# Example-2: Compare two strings using "!=" operator
echo "Example-2: Compare two strings using '!=' operator"
echo "String 1: $strval1 and String 2: $strval2"
if [ $strval2 != "Ubuntu" ]; then
  echo "Windows operating system"
else
  echo "Linux operating system"
fi

# Example-3: Partial String Comparison
echo "Example-3: Partial String Comparison"
strval="Microsoft Internet Explorer"
echo "String: $strval"

if [[ $strval == *Internet* ]];
then
  echo "Partially Match"
else
  echo "No Match"
fi

if [[ $strval == *internet* ]];
then
  echo "Partially Match"
else
  echo "No Match"
fi

# Example-4: Compare string with user input value
echo "Example-4: Compare string with user input value"
echo "Enter Your Name"
read input

if [ $input != "Bob" ];
then
  echo "No Record Found"
else
  echo "Record Found"
fi