#!/bin/bash
# Lab 2 Classwork 2
# Date: 2023 Jan 09
# Github: https://github.com/UODA-CSE/cse407l_unix-lab

# Take users salary and calculate the tax amount and net salary

# Take user's salary
echo "Enter your salary: "
read salary

# check if the input is not empty and is a number
if [ -z "$salary" ] || ! [[ "$salary" =~ ^[0-9]+$ ]]; then
    echo "You have to enter a valid number"
else
    # calculate the tax amount and net salary
    taxAmount=$(echo "scale=2;$salary*0.2" | bc)
    netSalary=$(echo "scale=2;$salary-$taxAmount" | bc)
    echo "Your salary is $salary and your tax amount is $taxAmount and your net salary is $netSalary"
fi

