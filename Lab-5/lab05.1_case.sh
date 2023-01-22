#!/bin/bash
# Lab 5.2: Case Conditional Statement
# Date: 2023 Jan 22
# Github: https://github.com/UODA-CSE/cse407l_unix-lab

# Example-1: Case statement with single condition
echo "Example-1: Case statement with single condition"
echo "Type your name"
read name
case $name in
"John")
    echo "Hello John"
    ;;
"Jane")
    echo "Hello Jane"
    ;;
*)
    echo "Hello Stranger"
    ;;
esac

# Example-2: Multiple case statement with pipe
echo "Example-2: Multiple case statement with pipe"
echo "Type your ID number"

read ID
case $ID in
65341)
    echo "Your position is 1st"
    ;;
97564 | 88453)
    echo "Your position is 2nd"
    ;;
45087)
    echo "Your position is 3rd"
    ;;
*)
    echo "Invalid ID"
    ;;
esac

# Example-3: How to quit from case/esac statement block
echo "Example-3: How to quit from case/esac statement block"
while (true); do
    a=8
    b=4
    ((x = $a + $b))
    ((y = $a - $b))
    ((z = $a * $b))

    echo "Type 1 or 2 or 3"
    read ans
    case $ans in
    1) echo "The sum of $a and $b is $x & exit" ;;
    2) echo "The subtraction of $a and $b is $y & exit" ;;
    3) echo "The multiplication of $a and $b is $z & exit" ;;
    *) echo "Invalid entry" ;;
    esac
done

# Example-4: Checking empty command line argument value
echo "Example-4: Checking empty command line argument value"
#!/bin/bash
case "$2" in
"Ubuntu")
    echo "The second argument is $2."
    ;;
"CentOS")
    echo "The second argument is $2."
    ;;
"")
    echo "The second argument is empty."
    ;;
esac

# Example-5: Case statement with multiple conditions based on the input
echo "Example-5: Case statement with multiple conditions based on the input"
echo "Type the name of a month"
read month

case $month in

January | Jan*)
    Message=" 21st February is our International Mother's day."
    ;;
February | Feb*)
    Message=" 21st February is our International Mother's day."
    ;;
March | Mar*)
    Message="9th March is the world kidney day."
    ;;
April | Apr*)
    Message="The current month is not February"
    ;;
May | May*)
    Message="The current month is February"
    ;;

June | Jun*)
    Message="The current month is February"
    ;;

*)
    Message="No matching information found"
    ;;
esac

echo $Message

# Example-6: Check variable in the bash case statement
echo "Example-6: Check variable in the bash case statement"
case $1 in
"") echo "I like bash programming" ;;
esac

# Example-7: Result
echo "Example-7: Result"
N1=$1
op=$2
N2=$3
case $op in
'+')
    ((Result = $N1 + $N2))
    ;;
'-')
    ((Result = $N1 - $N2))
    ;;
'x')
    ((Result = $N1 * $N2))
    ;;
'/')
    ((Result = $N1 / $N2))
    ;;
*)
    echo "Wrong numbers of arguments"
    exit 0
    ;;
esac
echo "$N1 $op $N2 = $Result"

# Example-8: Range of values
echo "Example-8: Range of values"
name=$1
mark=$2
case $mark in
9[0-9] | 100)
    grade="A+"
    ;;
8[0-9])
    grade="A"
    ;;
7[0-9])
    grade="B+"
    ;;
6[0-9])
    grade="C+"
    ;;
0 | [0-9] | 1[0-9] | 2[0-9] | 3[0-9] | 4[0-9] | 5[0-9])
    grade="F"
    ;;
*)
    echo "Invalid mark"
    exit 0
    ;;
esac
echo "$name obtained $grade"
