#!/bin/bash
# Lab 5.1: Conditional Statements
# Date: 2023 Jan 22
# Github: https://github.com/UODA-CSE/cse407l_unix-lab

# Example-1: if-else statement with single condition
echo "Example-1: if-else statement with single condition"
echo "Enter a number:"
read n
if [ $n -lt 100 ]; then
    printf "$n is less than 100\n"
fi

# Example-2: if-else statement with multiple conditions
echo "Example-2: if-else statement with multiple conditions"
echo "Enter a number:"
read n
if [ $n -lt 100 ]; then
    printf "$n is less than 100\n"
elif [ $n -eq 100 ]; then
    printf "$n is equal to 100\n"
else
    printf "$n is greater than 100\n"
fi

# Example-3: if-else statement with multiple conditions (Username and Password)
echo "Example-3: if-else statement with multiple conditions (Username and Password)"
echo "Enter username"
read un
echo "Enter password"
read -s pw
if [[ "$un" == "admin" && "$pw" == "superuser" ]]; then
    echo "Login Successful."
fi

# Example-4: if-else statement (Grade)
echo "Example-4: if-else statement (Grade)"
echo "Enter the mark"
read mark
if (($mark >= 90)); then
    echo "Grade - A+"
elif (($mark < 90 && $mark >= 80)); then
    echo "Grade - A"
elif (($mark < 80 && $mark >= 70)); then
    echo "Grade - B+"
elif (($mark < 70 && $mark >= 60)); then
    echo "Grade - C+"
else
    echo "Grade - F"
fi

# Example-5: if-else statement with nested if-else
echo "Example-5: if-else statement with nested if-else"
echo "Enter the sales amount"
read amount
echo "Enter the time duration"
read duration

if (($amount >= 10000)); then
    if (($duration <= 7)); then
        output="You will get 20% bonus"
    else
        output="You will get 15% bonus"
    fi
else
    if (($duration <= 10)); then
        output="You will get 10% bonus"
    else
        output="You will get 5% bonus"
    fi
fi
echo "$output"
