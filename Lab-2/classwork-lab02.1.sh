#!/bin/bash
# Lab 2 Classwork 1
# Date: 2023 Jan 09
# Github: https://github.com/UODA-CSE/cse407l_unix-lab

# Take users basic information and store it in variables. Then take validate the email
# address and print the information in a formatted way.

# Take user's first name
echo "Enter your first name: "
read firstName

# Take user's last name
echo "Enter your last name: "
read lastName

# Take user's email address
echo "Enter your email address: "
read email

# check if the inputs are not empty and has a valid email address that at least have a @ and a .
if [ -z "$firstName" ] || [ -z "$lastName" ] || [ -z "$email" ]; then
    echo "You have to enter all the information"
elif [[ "$email" == *"@"* ]] && [[ "$email" == *"."* ]]; then
    echo "Your name is $firstName $lastName and your email address is $email"
else
    echo "Your email address is not valid"
fi
