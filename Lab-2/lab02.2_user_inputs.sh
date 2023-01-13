#!/bin/bash
# Lab 2.2: User Inputs
# Date: 2023 Jan 09
# Github: https://github.com/UODA-CSE/cse407l_unix-lab

# Example-1: Reading user input using 'read' command
echo "Example-1: Reading user input using 'read' command or '\$REPLY'"
echo "Enter your name: "
read
echo -e "\tYour answer is $REPLY"

# Example-2: Reading user input using 'read' command variable
echo "Example-2: Reading user input using 'read' command variable"
echo "Enter your name: "
read myName
echo -e "\tYour answer is $myName"

# Example-3: Using read command with options
echo "Example-3: Using read command with options -p and -s"
# Type your Login Information
read -p 'Username: ' user # -p option prints the prompt
read -sp 'Password: ' pass # -s option hides the input
# Check the username and password are valid or not
if [ $user == "admin" ] && [ $pass == "admin" ]; then
    echo -e "\n\tWelcome $user"
else
    echo -e "\n\tInvalid username or password"
fi

# # Example-4: Using read command with options -a and -d
# echo "Example-4: Using read command with options -a and -d"
# # Read the input as an array
# echo "Enter your name: "
# read -a names # -a option specifies the array
# echo "Names: ${names[0]}, ${names[1]}"
# # Read the input until the delimiter is found
# echo "Enter your name: "
# read -d ' ' fname # -d option specifies the delimiter
# read -d '
# echo "First Name: $fname"
# echo "Last Name: $lname"

# Example-5: Using read command to take multiple inputs
echo "Example-5: Using read command to take multiple inputs"
echo "Type four names of your favorite programming languages:"
read lang1 lang2 lang3 lang4
echo "Your favorite programming languages are: $lang1, $lang2, $lang3, $lang4"

# Example-6: Using read command to take multiple inputs in a single line
echo "Example-6: Using read command to take multiple inputs in a single line"
echo "Type four names of your favorite programming languages:"
read -a langs
echo "Your favorite programming languages are: ${langs[0]}, ${langs[1]}, ${langs[2]}, ${langs[3]}"

# Example-7: Using read command with the time limit
echo "Example-7: Using read command with the time limit"
echo "Type your name within 5 seconds:"
read -t 5 name # -t option specifies the time limit
echo "Your name is $name"

# Example-8: Using read command with the number of characters limit or -n option
echo "Example-8: Using read command with the number of characters limit or -n option"
echo "Type your fav color within 5 seconds:"
read -n 5 color # -n option specifies the number of characters limit
echo -e "\nYour fav color is $color"

# Example-9:  Checking a taken path is file or directory
echo "Example-9:  Checking a taken path is file or directory"
echo "Enter a path: "
read path
if [ -f $path ]; then
    echo "$path is a file"
elif [ -d $path ]; then
    echo "$path is a directory"
else
    echo "$path is not valid"
fi

# Example-10: Calculate the Percentage of a Value
echo "Example-10: Calculate the Percentage of a Value"
echo "Enter the total marks: "
read total
echo "Enter the marks obtained: "
read obtained
percentage=$((obtained*100/total))
echo "Percentage: $percentage%"

# Example-11: Initialize array using the read command or -a option
echo "Example-11: Initialize array using the read command or -a option"
echo "Enter the colors: "
read -a colors
echo -e "Your favorite colors are: ${colors[0]}, ${colors[1]}, ${colors[2]}"
