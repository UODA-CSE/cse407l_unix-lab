# Lab-1
## Basic options in Bash

| Option | Description |
| ------ | ----------- |
| -n     | Omit newline from the output.|
| -e     | Enable interpretation of backslash escapes.|
| -E     | Disable interpretation of backslash escapes (default).|
| -r     | Disable interpretation of backslash escapes (default).|
| -s     | Disable file name generation (globbing).|
| -u     | Treat unset variables as an error when substituting.|
| -x     | Print commands and their arguments as they are executed.|
| -v     | Print shell input lines as they are read.|
| -V     | Print shell version.|
| -c     | Read commands from the first non-option argument command_string.|
| -i     | The shell is interactive.|
| -o     | Set the variable corresponding to the option name to the value value.|
| -O     | Set the variable corresponding to the option name to the value value.|
| -p     | Prompt the user and read a line of input.|
| -t     | Exit after timeout seconds.|
| -h     | Display a help message.|
| -H     | Display a help message.|
| -L     | Display a help message.|
| -P     | Display a help message.|
| -a     | Display a help message.|
| -A     | Display a help message.|
| -B     | Display a help message.|
| -C     | Display a help message.|
| -D     | Display a help message.|
| -E     | Display a help message.|
| -F     | Display a help message.|
| -G     | Display a help message.|
| -I     | Display a help message.|
| -J     | Display a help message.|
| -K     | Display a help message.|
| -L     | Display a help message.|
| -M     | Display a help message.|
| -N     | Display a help message.|

## Output

```bash
$ bash echo.sh
```
```bash
Example-1: Hello World
Example-2: Hello World This is a new line.

Example-3: Hello World 
 This is a carriage return.  This is a bell. is a backspace. 
                                              This is a vertical tab. 
                                                                       This is a form feed. 
Example-4: Hello World \n. This is a new line. \t This is a tab. \b This is a backspace. \r This is a carriage return. \a This is a bell. \v This is a vertical tab. \f This is a form feed. \c This is a no new line. \x41 This is a hexadecimal value. \u0041 This is a unicode value. \U00000041 This is a unicode value. \e This is an escape character. \033 This is an octal value. \x1b This is a hexadecimal value. \c This is a no new line. \ This is a backslash.
Example-5: The price of the product is $100
Example-6: Hello World 
                       . Look at the vertical tab. 
                                                    This is a vertical tab. 
                                                                             This is a vertical tab.
Example-7: Hello World Example-8: The names of all files and folders are:
echo.sh readme.md
Example-9: The names of specific files are:
echo.sh
 This is a carriage return. iage return. 
```
---