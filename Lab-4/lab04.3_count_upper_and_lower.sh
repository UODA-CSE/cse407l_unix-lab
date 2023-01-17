#!/bin/bash
# Lab 4.3 : Bash count upper and lower case letters
# Date: 2023 Jan 16
# Github: https://github.com/UODA-CSE/cse407l_unix-lab

str="Hello World."

# Example-1: Count uppercase and lowercase letter using 'awk' command
echo "Example-1: Count uppercase and lowercase letter using 'awk' command"
#Print the string value
echo "$str"
#Print the total number of uppercase and lower case  letters of the string
awk 'BEGIN{ FPAT="[a-zA-Z]"; l=u=0 }
     {
         for (i=1; i<=NF; i++) ($i~/[a-z]/)? l++ : u++;
         printf " Total uppercase: %d\n Total lowercase: %d\n", u, l
     }' <<<"$str"

# Example-2: Count uppercase and lowercase letter from user input using 'awk' command
echo "Example-2: Count uppercase and lowercase letter from user input using 'awk' command"
#Read the string value from user
echo "Enter a string: "
read str
#Print the string value
echo "$str"
#Print the total number of uppercase and lower case  letters of the string
awk 'BEGIN{ FS=""; l=u=0 }
     {
         for (i=1; i<=NF; i++) ($i~/[a-z]/)? l++ : u++;
         printf " Total uppercase: %d\n Total lowercase: %d\n", u, l
     }' <<<"$str"


# Example-3: Count uppercase and lowercase letter using 'gawk' command
echo "Example-3: Count uppercase and lowercase letter using 'gawk' command"
#Print the string value
# gawk is a GNU awk command
echo "$str"
#Read the content of the file
while read line; do
echo "$line"
done < indata.txt

#Count the total number of uppercase and lowercase characters of the file
# gawk '{
#     print "Total uppercase:", patsplit($0, a, /[A-Z]/)
#     print "Total lowercase", patsplit($0, a, /[a-z]/)
# }' RS="\0" indata.txt

# Example-4: Count uppercase and lowercase letter of a string data using 'grep' command
echo "Example-4: Count uppercase and lowercase letter of a string data using 'grep' command"
str="Hello Everyone"
#Print the string value
echo "$str"
#Print total number of lowercase letters
echo -n "Total lowercase:"
grep -o '[a-z]' <<< "$str" | wc -l
#Print total number of uppercase letters
echo -n "Total uppercase:"
grep -o '[A-Z]' <<< "heLLo" | wc -l