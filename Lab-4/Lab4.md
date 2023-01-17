# Lab-4
## Find Length of String in Bash

```bash
${#strvar}
expr length $strvar
expr “${strvar}”:’.*’
echo $strvar | wc -c
echo $strvar |awk '{print length}'
```

## String trimming in Bash

```bash
strvar=”   Hello World   “
echo $strvar
echo ${strvar}
echo ${strvar#* }
echo ${strvar##* }
echo ${strvar% *}
echo ${strvar%% *}
```

## String upper and lower case count in Bash

```bash
strvar=”Hello World”
echo $strvar | tr ‘[:lower:]’ ‘[:upper:]’
echo $strvar | tr ‘[:upper:]’ ‘[:lower:]’
```

