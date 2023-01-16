#!/bin/bash
# Lab 3.2: Bash string split
# Date: 2023 Jan 13
# Github: https://github.com/UODA-CSE/cse407l_unix-lab

# Example-1: Splitting string using $IFS variable
echo "Example-1: Splitting string using \$IFS variable"
myString="This is a string"
echo "myString=$myString"
echo "Splitting string using \$IFS variable"
IFS=' ' # space is set as delimiter
read -ra myArray <<< "$myString"
for i in "${myArray[@]}"; do
    echo "$i"
done

# Example-2: Split string based on a particular character
echo "Example-2: Split string based on a particular character"
#Read the string value
echo "Enter book name, author name and price by separating comma. "
read text
# Set comma as delimiter
IFS=','
#Read the split words into an array based on comma delimiter
read -a strarr <<< "$text"
# Print each value of the array by using the loop
echo "Book name: ${strarr[0]}"
echo "Author name: ${strarr[1]}"
echo "Price: ${strarr[2]}"

# Example-3: Split the string without $IFS variable
echo "Example-3: Split the string without \$IFS variable or using readarray"
#Read the main string
echo "Enter the string with colon(:) to split"
read mainstr

#Split the string based on the delimiter, ':'
readarray -d : -t strarr <<< "$mainstr"
printf "\n"

# Print each value of the array by using loop
for (( n=0; n < ${#strarr[*]}; n++))
do
  echo "${strarr[n]}"
done

# Example-4: Split the string with a multi-character delimiter
echo "Example-4: Split the string with a multi-character delimiter"
#Define the string to split
text="learnHTMLlearnPHPlearnMySQLlearnJavascript"

#Define multi-character delimiter
delimiter="learn"
#Concatenate the delimiter with the main string
string=$text$delimiter

#Split the text based on the delimiter
myarray=()
while [[ $string ]]; do
  myarray+=( "${string%%"$delimiter"*}" )
  string=${string#*"$delimiter"}
done

#Print the words after the split
for value in ${myarray[@]}
do
  echo -n "$value "
done
printf "\n"