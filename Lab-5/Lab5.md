# Lab-5
## Conditional statements in Bash

### Types of conditional statements

1. if statement
2. if else statement
3. if elif statement
4. Nested if statement
5. Case statement

### Conditional operators
Operator | Meaning
---------|--------
-eq | equal to
-ne | not equal to
-gt | greater than
-ge | greater than or equal to
-lt | less than
-le | less than or equal to
== | equal to
!= | not equal to
-z | string is null
-n | string is not null
-d | file is a directory
-e | file exists
-r | file is readable
-W | file is writable
-x | file is executable
\> | greater than
\< | less than
\>= | greater than or equal to
\<= | less than or equal to
! | not

Syntax of if statement
```bash
if [ condition ] ; then

Command(s)

fi
```

Syntax of case statement
```bash
case expression in
    Case1)
        Command(s)
    ;;
    Case2)
        Command(s)
    ;;
esac
```