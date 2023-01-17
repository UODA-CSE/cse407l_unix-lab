#!/bin/bash
# Lab 4.2: Bash string trimming
# Date: 2023 Jan 16
# Github: https://github.com/UODA-CSE/cse407l_unix-lab

str1="Hello World"
str2="Penguin is a flightless bird. It is a very cute animal."
echo "String 1=$str1"
echo "String 2=$str2"

# Example-1: Using the ‘#’ symbol to trim a string
echo "Example-1: Using the ‘#’ symbol to trim a string"
echo "Trimmed string 1=${str1#* }" # Remove the first word
echo "Trimmed string 2=${str2#* }" # Remove the first word

# Example-2: Using the ‘##’
echo "Example-2: Using the ‘##’"
echo "Trimmed string 1=${str1##* }" # Remove the last word
echo "Trimmed string 2=${str2##* }" # Remove the last word

# Example-3: Using the ‘*##' symbol to trim a string
echo "Example-3: Using the ‘*##' symbol to trim a string (Remove the last word)"
echo "Trimmed string 1=${str1*## }" # Remove the last word
echo "Trimmed string 2=${str2*## }" # Remove the last word

# Example-4: Trim string data using `sed` command
# `sed` command is another option to remove leading and
# trailing space or character from the string data. The
# following commands will remove the spaces from the
# variable, $myVar using `sed` command.
echo "Example-4: Trim string data using `sed` command"
echo "Trimmed string 1=$(echo "$str1" | sed 's/[^ ]* //')" # Remove the first word
echo "Trimmed string 2=$(echo "$str2" | sed 's/[^ ]* //')" # Remove the first word

# Example-5: Trim string data using `sed` command
echo "Example-5: Trim string data using `sed` command (Remove the last word)"
echo "Trimmed string 1=$(echo "$str1" | sed 's/[^ ]* //')" # Remove the last word
echo "Trimmed string 2=$(echo "$str2" | sed 's/[^ ]* //')" # Remove the last word

# Example-6: Trim string data using `sed` command ($Var by using `sed` command and [[:space:]].)
echo "Example-6: Trim string data using `sed` command ($Var by using `sed` command and [[:space:]].)"
echo "Trimmed string 1=$(echo "$str1" | sed 's/[[:space:]].*//')" # Remove the first word
echo "Trimmed string 2=$(echo "$str2" | sed 's/[[:space:]].*//')" # Remove the first word

# Example-7: Trim string data using `sed` command ($Var by using `sed` command and [[:space:]].)
echo "Example-7: Trim string data using `sed` command ($Var by using `sed` command and [[:space:]].)"
echo "Trimmed string 1=$(echo "$str1" | sed 's/.*[[:space:]]//')" # Remove the last word
echo "Trimmed string 2=$(echo "$str2" | sed 's/.*[[:space:]]//')" # Remove the last word

# Example-8: Trim string data using `awk` command
echo "Example-8: Trim string data using `awk` command"
echo "Trimmed string 1=$(echo "$str1" | awk '{print $2}')" # Remove the first word
echo "Trimmed string 2=$(echo "$str2" | awk '{print $2}')" # Remove the first word

# Example-9: Trim string data using `awk` command (Remove the last word)
echo "Example-9: Trim string data using `awk` command (Remove the last word)"
echo "Trimmed string 1=$(echo "$str1" | awk '{print $NF}')" # Remove the last word
echo "Trimmed string 2=$(echo "$str2" | awk '{print $NF}')" # Remove the last word
# Declare a variable with a string data
$ Input_text=" Desiginning Website with CSS3 "
# Print the value of the variable before trimming
$ echo "${Input_text}"
# Print the string after Removing the spaces from the beginning of the variable
$ echo "${Input_text}" | awk '{gsub(/^[ \t]+/,""); print $0, " JQuery" }'
# Print the string after Removing the spaces from the end of the variable
$ echo "${Input_text}" | awk '{gsub(/[ \t]+$/,""); print $0, " JQuery" }'
# Print the string after Removing the spaces from the beginning and end of the variable
$ echo "${Input_text}" | awk '{gsub(/^[ \t]+| [ \t]+$/,""); print $0, " JQuery" }'

# Example-10: Trim string data using xargs command
echo "Example-10: Trim string data using xargs command"
echo "Trimmed string 1=$(echo "$str1" | xargs)" # Remove the first word
echo "Trimmed string 2=$(echo "$str2" | xargs)" # Remove the first word

# Example-11: Trim string data using xargs command (Remove the last word)
echo "Example-11: Trim string data using xargs command (Remove the last word)"
echo "Trimmed string 1=$(echo "$str1" | xargs)" # Remove the last word
echo "Trimmed string 2=$(echo "$str2" | xargs)" # Remove the last word

# Example-12: Trim string data from using using awk command
echo "Example-12: Trim string data from using using awk command"
echo "Trimmed string 1=$(echo "$str1" | awk '{print $1}')" # Remove the first word
echo "Trimmed string 2=$(echo "$str2" | awk '{print $1}')" # Remove the first word

# Example-13: Trim string data from using using awk command (Remove the last word)
echo "Example-13: Trim string data from using using awk command (Remove the last word)"
echo "Trimmed string 1=$(echo "$str1" | awk '{print $NF}')" # Remove the last word

# Example-14: Trim string data from using using awk command (Remove from specific position)
echo "Example-14: Trim string data from using using awk command (Remove from specific position)"
echo "Trimmed string 1=$(echo "$str1" | awk '{print $1, $2}')" # Remove from specific position
echo "Trimmed string 2=$(echo "$str2" | awk '{print $1, $2}')" # Remove from specific position
