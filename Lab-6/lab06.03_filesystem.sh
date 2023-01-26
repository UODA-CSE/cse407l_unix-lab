#!/bin/bash
# Lab 6.3: File System
# Date: 2023 Jan 22
# Github: https://github.com/UODA-CSE/cse407l_unix-lab

#Example-1: Reading file content from command line
echo "Example-1: Reading file content from command line"
echo "Enter file name"
read filename
while read line; do echo $line; done < company.txt

#Example-2: Reading file content using script
echo "Example-2: Reading file content using script"
filename='company.txt'
n=1
while read line; do
# reading each line
echo "Line No. $n : $line"
n=$((n+1))
done < $filename

#Example-3: Passing filename from the command line and reading the file
echo "Example-3: Passing filename from the command line and reading the file"
filename=$1
while read line; do
# reading each line
echo $line
done < $filename

#Example-4: Reading file by omitting backslash escape
echo "Example-4: Reading file by omitting backslash escape"
while read -r line; do
# Reading each line
echo $line
done < company.txt