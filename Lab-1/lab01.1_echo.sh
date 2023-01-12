#!/bin/bash
# Lab 1.1: Echo Command
# Date: 2023 Jan 09
# Github: https://github.com/UODA-CSE/cse407l_unix-lab

# Example-1: Using the `echo` command without any option [new line]
echo "Example-1: Hello World"

# Example-2: Using the `echo` command with the `-n` option [no new line]
echo -n "Example-2: Hello World"
echo " This is a new line."

echo ""

# Example-3: Using the `echo` command with the `-e` option [escape character]
echo -e "Example-3: Hello World \n. This is a new line. \t This is a tab. \b This is a backspace. \r This is a carriage return. \a This is a bell. \v This is a vertical tab. \f This is a form feed. \c This is a no new line. \x41 This is a hexadecimal value. \u0041 This is a unicode value. \U00000041 This is a unicode value. \e This is an escape character. \033 This is an octal value. \x1b This is a hexadecimal value. \c This is a no new line. \ This is a backslash."

echo ""

# Example-4: Using the `echo` command with the `-E` option
echo -E "Example-4: Hello World \n. This is a new line. \t This is a tab. \b This is a backspace. \r This is a carriage return. \a This is a bell. \v This is a vertical tab. \f This is a form feed. \c This is a no new line. \x41 This is a hexadecimal value. \u0041 This is a unicode value. \U00000041 This is a unicode value. \e This is an escape character. \033 This is an octal value. \x1b This is a hexadecimal value. \c This is a no new line. \ This is a backslash."

# Example-5: Using variable in `echo` command
price="\$100"
echo "Example-5: The price of the product is $price"

# Example-6: Using ‘\v’ in `echo` command [vertical tab]
echo -e "Example-6: Hello World \v. Look at the vertical tab. \v This is a vertical tab. \v This is a vertical tab."

# Example-7: Using ‘\c’ in `echo` command ['\c' is used to omit any part of the text]
echo -e "Example-7: Hello World \c. This part of the text is omitted. \c This part of the text is omitted."

# Example-8: Print the names of all files and folders using `echo` command
echo -e "Example-8: The names of all files and folders are:"
echo *

# Example-9: Print the names of specific files using `echo` command
echo -e "Example-9: The names of specific files are:"
echo *.sh

# Example-10: Using '\r' in `echo` command [carriage return]
echo -e "Example-10: Look at the carriage return. \r This is a carriage return. \r This is a carriage return."