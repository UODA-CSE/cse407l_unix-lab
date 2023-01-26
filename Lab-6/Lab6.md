# Lab-6
## Compare Strings
Write a bash script that takes two strings as arguments and prints "Strings are equal" if the strings are equal, and "Strings are not equal" otherwise.

## Globbing
Bash globbing is the process of using wildcard characters to match patterns in file names or paths. Here are some examples of common bash globbing patterns:

-  `*` - matches any string of characters, including an empty string. For example, *.txt would match any file ending in ".txt", while * would match any file or directory.

-  `?` - matches any single character. For example, file?.txt would match "file1.txt" and "file2.txt", but not "file10.txt".

-  `[characters]` - matches any single character that is in the set of characters specified between the brackets. For example, file[123].txt would match "file1.txt", "file2.txt", and "file3.txt".

-  `[!characters]` - matches any single character that is NOT in the set of characters specified between the brackets. For example, file[!123].txt would match any file ending in ".txt" that does not contain the numbers 1, 2 or 3.

-  `{string1,string2,string3}` - matches any of the strings specified between the braces. For example, file{1,2,3}.txt would match "file1.txt", "file2.txt", and "file3.txt".

-  `~` - matches the current user's home directory. For example, cd ~/Documents would change the current directory to the user's Documents folder.

-  `**` - matches any number of directories, including none. For example, **/file.txt would match all files named "file.txt" in the current directory and any subdirectories.

Note that these patterns can be combined to create more complex expressions. For example, `file[!123]{1,2}.txt` would match any file that ends in ".txt", contains a letter instead of numbers 1,2,3 and number 1 or 2.

## File System

Reading file content from command line
```bash
 while read line; do echo $line; done < company.txt
 ```