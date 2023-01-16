# Lab-3
## Bash lowercase and uppercase strings

Syntax:
```bash
${string,,} # lowercase
${string^^} # uppercase
```

## Bash string split

Syntax:
```bash
${string#substring} # remove shortest match from front
${string##substring} # remove longest match from front

# $IFS is the internal field separator
# $IFS is a special variable that Bash uses to determine how to do word splitting.
# Set comma as delimiter
IFS=','
read -ra ADDR <<< "$string"
for i in "${ADDR[@]}"; do
    # process "$i"
done
```

