#! /bin/bash
# This is a script showing how to read a file
# needs a file called file.txt to be in the same folder as the script

i=1
while read f; do
    echo "Line $i: $f"
    ((i++))
done < file.txt