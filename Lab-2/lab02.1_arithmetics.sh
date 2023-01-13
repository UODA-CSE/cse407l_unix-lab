#!/bin/bash
# Lab 2.1: Arithmetic Operation
# Date: 2023 Jan 09
# Github: https://github.com/UODA-CSE/cse407l_unix-lab

# Example-1: Arithmetic operation using ‘expr’ Command
echo "Example-1: Using ‘expr’ Command"
# Works as the string
echo "10 + 30 = `expr 10 + 30`"
echo "1 + 1 = `expr 1 + 1`"
echo "1 - 1 = `expr 1 - 1`"
echo "1 * 1 = `expr 1 \* 1`"
echo "1 / 1 = `expr 1 / 1`"
#Using expr with backtick
myVar1=`expr 30 / 10`
echo "myVar1 = $myVar1"
#Using expr within command substitute
myVar2=$( expr 30 - 10 )
echo "myVar2 = $myVar2"

# Example-2: Arithmetic operation using 'let' Command
echo "Example-2: Using ‘let’ Command"
let myVar3=30+10
echo "myVar3 = $myVar3"
let myVar4=30-10
echo "myVar4 = $myVar4"
echo "Applying increment"
let n=7
echo -e "\tn   = $n"
let n++
echo -e "\tn++ = $n"
let n--
echo -e "\tn-- = $n"
let n+=5
echo -e "\tn+=5 = $n"
let n-=5
echo -e "\tn-=5 = $n"
# Using argument value in arithmetic operation
echo "Using argument value in arithmetic operation"
let myVar5=$1+10
echo -e "\tmyVar5 = $myVar5"

# Example-3: Arithmetic operation using 'bc' Command
echo "Example-3: Using ‘bc’ Command"
echo "10 + 30 = `echo 10 + 30 | bc`"
echo "1 + 1 = `echo 1 + 1 | bc`"
echo "1 - 1 = `echo 1 - 1 | bc`"
# Dividing 55 by 3 with bc and scale value
echo "55 / 3 = `echo "scale=2;55/3" | bc`"

# Example-4: Arithmetic operation using double brackets
echo "Example-4: Using double brackets $(( ))"
echo "10 + 30 = $((10 + 30))"
echo "1 + 1 = $((1 + 1))"
# Using post or pre increment/decrement operator
echo "Using post or pre increment/decrement operator"
((val1++))
echo -e "\tval1 = $val1"
val2=41
echo -e "\tval2 = $val2"
# Using shorthand operator
(( val2 += 60 ))
echo -e "\tval2 += 60 = $val2"


# Example-5: Arithmetic operation using $[ ]
echo "Example-5: Using $[ ]"
echo "10 + 30 = $[10 + 30]"
echo "1 + 1 = $[1 + 1]"

# Example-6: Arithmetic operation using 'awk' Command
echo "Example-6: Using ‘awk’ Command"
echo "10 + 30 = `echo 10 30 | awk '{print $1 + $2}'`"
echo "1 + 1 = `echo 1 1 | awk '{print $1 + $2}'`"
echo "1 - 1 = `echo 1 1 | awk '{print $1 - $2}'`"
echo "1 * 1 = `echo 1 1 | awk '{print $1 * $2}'`"
# Initialize the dividend value
n1=100
n2=36
# Using awk to divide two numbers
echo "$n1 / $n2 = `echo $n1 $n2 | awk '{print $1 / $n2}'`"
# Print the output without formating
awk "BEGIN {print $n1/$n2}"
# Print the output with formating
awk "BEGIN {printf \"%.2f\", $n1/$n2}"

