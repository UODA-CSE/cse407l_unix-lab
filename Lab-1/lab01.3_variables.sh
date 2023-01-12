#!/bin/bash
# Lab 1.3: Variables
# Date: 2023 Jan 09
# Github: https://github.com/UODA-CSE/cse407l_unix-lab

# Example-1: Declaring and reading string data using variable
name="John Doe"
echo "Example-1: The name of the person is $name"

# Example-2: Combining two string variables
first_name="John"
last_name="Doe"
full_name="$first_name $last_name"
echo "Example-2: The full name of the person is $full_name"

# Example-3: Concatenating strings with variables 
department="CSE"
code="407l"
course="$department$code"
echo "Example-3: The course code is $course"

# Example-4: Declaring and reading numeric data using variables
n=100
echo "Example-4: The value of n is $n"
echo "Example-4: The value of n is $((n+1))"


# Example-5: Doing arithmetic operation using bc command
n2=25
echo "Example-5: The value of n2 is" $(bc <<< "$n2+1")

# Example-6: Doing arithmetic operation using expr command
n3=25
echo "Example-6: The value of n3 is" $(expr $n3 + 1)

# Example-7: Creating simple bash script
echo "Example-7: Creating simple bash script"
str="Hello World" #string variable
 
#print string value
echo $str
 
num=120
#subtract 20 from numeric variable
(( result=$num-20))
 
#print numeric value
echo "Example-7: The result is $result"

# Example-8: Using global and local variables
#global variable
global_var=10

#local variable
local var=20

echo "Example-8: The value of global variable is $global_var"
echo "Example-8: The value of local variable is $local_var"
echo "Example-8: The values sum is $((global_var+local_var))"


# Example-9: Using array variable 
array=(1 2 3 4 5 6 7 8 9 10)
echo "Example-9:"
echo -e "\t The array is ${array[@]}"
total=${#array[*]} #total number of elements in the array
echo -e "\t The total number of elements in the array is $total"
echo -e "\t The first element of the array is ${array[0]}"
echo -e "\t The second element of the array is ${array[1]}"
echo -e "\t The third element of the array is ${array[2]}"
echo -e "\t Using for loop to print all elements of the array"
for i in ${array[@]}
do
    echo -e "\t\t $i"
done

echo -e "\t Using for loop to print all elements of the array with index"
for i in ${!array[@]}
do
    echo -e "\t\t $i: ${array[$i]}"
done


