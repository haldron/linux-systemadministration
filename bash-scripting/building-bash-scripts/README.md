# Notes
## Displaying text with echo
echo : prints out information, usually to standard output
If we dont use quotes, bash goes along and interprets things as it finds them
'' will literally print text like a string, no variables or arguments are interpreted
"" will interpret variables but print others as string text
Use \ to escape special characters
use echo with nothing for adding empty lines


## Working with variables
named with alphanumeric only and must start with a letter
a=Hello
There must be no spaces otherwise put it in quotes
Use $-variablename- to use the variable


Add attributes to the variables by using the declare keyword
declare -i d=123 makes d an integer only
-r will make it read only
-l and -u make it lowercase and uppercase

echo $HOME will return the home directory
echo $PWD will return the current directory
echo $MACHTYPE will return the machine type
echo $HOSTNAME returns the system name
echo $SECONDS returns the number of seconds the bash session has been running
adding seconds will return only since when the script started
echo $0 returns the name of the script


## Command subsitution
d=$(pwd)
echo $d
This will run the command and assign output to d


## Working with numbers
Do operations within (())
a=$((operations))
example e=$((d+2))
we can also use e++ and d--, e+=5 etc.
If we dont use (()) it will do string concatenation
But it only works with integers and not float points
For floating points we can use the bc program
g=$(echo 1/3 | bc -l)


## Comparison operations
useful for logic
[[]] with spaces inside
returns 0 or 1 for success and failure
example [[ "cat" = "dog" ]] will return 1 for fail
">" and "!" will work only for strings
for numbers we use -gt, -lt, -le, -ge, -eq and -ne
&&, || and ! are AND, OR and NOT operations
-z $a and -n $a can be used for null and not null tests

## Working with strings
Concatenate with c=$a$b
Use # for seeing length of the string eg. echo ${#a}
substrings using : eg. d=${c:3:4} will bring 4 characters from the 4th position. 0 is 1st character
negative indexes also work 

Replace strings using /
Eg. fruit = "apple banana banana cherry"
echo ${fruit/banana/durian}
apple durian banana cherry
Use // to replace all instances
echo ${fruit//banana/durian}
It also works with regex

## Coloring snd styling text
echo -e tells echo that we will be using escaped strings. 
Better used with a script as it is easy to make typos
tput is easier to use than rather direct codes 

## Handy helpers date and printf
date +"%d-%m-%Y" will print date
date +"%H-%M-%S" will print time

printf shows data with special formats and has more features than echo
printf "Name:\t%s\nID:\t%04d\n" "Scott" "12"
possible usage expressions are given on bash hackers website


## Working with arrays
a=()
b=("apple" "banana" "cherry")
echo ${b[2]} - This will print the 3rd element
b[5]="cherry"
b+=("mango") - Will append to the end of the arrays
echo ${b[@]} - Will print the whole array

For bash version 4, we can also use key-value pairs like dictionaries
declare -A myarray
myarray[color]=blue
echo ${myarray[color]}

## Reading and writing text files
echo "Some text" > file.txt
This will overwrite as well and can be used to empty a file
to append we can use >>
echo "Some more text" >> file.txt

ftp -n < ftp.txt - Uses the txt file as input for the ftp commands

## Using here documents
use a word as the end of file 
Eg. cat << End0fText will keep taking input till it sees the same word again
cat << End0fText
This is 
a multiline
text string
End0fText
