#!/bin/bash
# Lab 3.1: Bash string case conversion
# Date: 2023 Jan 13
# Github: https://github.com/UODA-CSE/cse407l_unix-lab

myVar1="Hello World"
myVar2="Eiffel Tower is in Paris. It is a famous landmark. It is 324 meters tall."
# Example-1: Converting string to lowercase
echo "Example-1: Converting string to lowercase"
echo "myVar1=$myVar1"
echo "myVar1=${myVar1,,}" # Double comma (,,) for lowercase all characters
echo "myVar1=${myVar1,}" # Single comma (,) for lowercase first character
echo "myVar1=${myVar1,,[A-Z]}" # Double comma (,,) for lowercase all characters
echo "myVar2=${myVar1,,[a-z]}" # Double comma (,,) for lowercase all characters
echo "myVar2=${myVar1,,[op]}" # Convert lowercase o and p

# Example-2: Converting string to uppercase
echo "Example-2: Converting string to uppercase"
echo "myVar1=$myVar1"
echo "myVar1=${myVar1^^}" # Double caret (^^) for uppercase all characters
echo "myVar1=${myVar1^}" # Single caret (^) for uppercase first character
echo "myVar1=${myVar1^^[a-z]}" # Double caret (^^) for uppercase all characters
echo "myVar2=${myVar1^^[A-Z]}" # Double caret (^^) for uppercase all characters
echo "myVar2=${myVar1^^[op]}" # Convert uppercase o and p

# Example-3: Converting string to title case
echo "Example-3: Converting string to title case"
echo "myVar1=$myVar1"
echo "myVar1=${myVar1^}" # Single caret (^) for uppercase first character
echo "myVar1=${myVar1^^}" # Double caret (^^) for uppercase all characters
echo "myVar2=${myVar1^^[A-Z]}" # Double caret (^^) for uppercase all characters
echo "myVar2=${myVar1^^[a-z]}" # Double caret (^^) for uppercase all characters
echo "myVar2=${myVar1^^[op]}" # Convert uppercase o and p

# Example-4: Converting string to sentence case
echo "Example-4: Converting string to sentence case"
echo "myVar1=$myVar1"
echo "myVar1=${myVar1^}" # Single caret (^) for uppercase first character
echo "myVar1=${myVar1^^}" # Double caret (^^) for uppercase all characters
echo "myVar2=${myVar1^^[A-Z]}" # Double caret (^^) for uppercase all characters
echo "myVar2=${myVar1^^[a-z]}" # Double caret (^^) for uppercase all characters

# Example-5: Converting string from user input
echo "Example-5: Converting string from user input"
echo "Enter a string: "
read myVar3
echo "myVar3=$myVar3"
echo "myVar3=${myVar3,,}" # Double comma (,,) for lowercase all characters
echo "myVar3=${myVar3^^}" # Double caret (^^) for uppercase all characters

# Example-6: Converting string from user input 2
echo "Example-6: Converting string from user input 2"
read -p "Do you like music? " ans
answer=${ans^}
echo "You answered: $answer"

# Example-7: Example 7
echo "Example-7:"
a=15
b=20
read -p "Do you want to add or subtract? " ans
answer=${ans^^}
if [ $answer == 'ADD' ]; then
echo "The result of addition=$((a+b))"
elif [ $answer == 'SUBTRACT' ]; then
echo "The result of subtraction=$((a-b))"
else
echo "Invalid answer"
fi

# Example-8: Example 8
echo "Example-8:"
#!/bin/bash
read -p "Enter some text data: " data
read -p "Mention the letters with the comma that will convert to uppercase?: " list
echo -n "The highlighted text is :  "
echo ${data^^[$list]}

# Example-9: User login demo
echo "Example-9: User login demo"
username='admin'
password='pop890'
read -p "Enter username: " u
read -p "Enter password: " p
user=${u,,}
pass=${p,,}
if [ $username == $user ] && [ $password == $pass ]; then
echo "Valid User"
else
echo "Invalid User"
fi