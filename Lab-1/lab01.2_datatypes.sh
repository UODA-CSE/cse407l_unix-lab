#!/bin/bash
# Lab 1.2: Data Types
# Date: 2023 Jan 09
# Github: https://github.com/UODA-CSE/cse407l_unix-lab

# Example-1: Declaring and reading string data using variable
name="John Doe"
echo "Example-1: The name of the person is $name"

# Example-2: Declaring and reading integer data using variable
age=25
echo "Example-2: The age of the person is $age"

# Example-3: Declaring and reading float data using variable
price=100.25
echo "Example-3: The price of the product is $price"

# Example-4: Declaring and reading boolean data using variable
is_active=true
echo "Example-4: The status of the person is $is_active"

# Example-5: Declaring and reading array data using variable
names=("John Doe" "Jane Doe" "John Smith" "Jane Smith")
echo "Example-5: The names of the persons are ${names[0]}, ${names[1]}, ${names[2]}, ${names[3]}"

# Example-6: Declaring and reading associative array data using variable
declare -A person
person[name]="John Doe"
echo "Example-6: The name of the person is ${person[name]}"
person[age]=25
echo "Example-6: The age of the person is ${person[age]}"
person[price]=100.25
echo "Example-6: The price of the product is ${person[price]}"

# Example-7: Declaring and reading null data using variable
null= # null data
echo "Example-7: The null data is $null"

# Example-8: Declaring and reading undefined data using variable
undefined # undefined data
echo "Example-8: The undefined data is $undefined"

# Example-9: Declaring and reading empty data using variable
empty="" # empty data
echo "Example-9: The empty data is $empty"

# Example-10: Declaring and reading special data using variable
special=" " # special data
echo "Example-10: The special data is $special"

# Example-11: Declaring and reading special data using variable
special="*" # special data
echo "Example-11: The special data is $special"


