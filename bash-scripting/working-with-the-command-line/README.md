## Common bash commands
pwd : Current working directory

ls : List the contents of the directory
All -l option for more details, man ls for more options

mkdir : Make a directory
rmdir : Delete a directory

clear : Clear te current screen

cd : Change current directory

cp : Copy a file

rm : delete a file 

cat : Stick files together or read a file to the screen

more : For reading a file more easier

head and tail : Peek at top and bottom of files

## Tilde and brace expansion
cd ~ : Takes to home folder
~  : Used to express home folder variable 

cd ~- : Go to previously access folder

{} : Create multiple things together
Eg. touch {apple,banana,cherry} will create 3 files together
touch file_{1..100} will create a 100 files
touch file_{01..100} will create a padding to sort it properly

echo {1..10..2} will give 1 3 5 7 9

echo {A..z} will print all letters first caps and then normal ones

## Changing where things go with pipes and redirection

Piping takes result of one command and sends it to another command
ls | more

Redirection can work with standard input,output and errors
input is represented by 0
output by 1
errors by 2
adding -v option to cp makes it verbose, so we see each copy operation

cp -v ../otherfolder/ 1>../success.txt 2>../errors.txt
other standard output is going to success.txt and standard errors are going to errors.txt
we can use & to represent both 1 and 2

we can also redirect to /dev/null which will never be accessible and seen again

## Manipulating output with grep,awk and cut

grep : search for specific patterns
Eg. grep scott auth.log
Add option -i to make it case insensitive

awk : extract specific things
Eg. grep -i break-in auth.log | awk {'print $12'}
This will print the 12th thing that comes in every line - here the ip address

sed : String manipulation inside a file with many filters

ping : Checking network connectivity and seeing the response time with a website/server
Add -c with number of pings to limit the packets

cut : Cut up a input based on specific criteria
Eg. ping -c 1 example.com | grep 'bytes from' | cut -d = -f 4
# Notes
## Understanding bash script syntax
A script can contain variables, arguments and flow control logic unlike just typing one command into the shell
its like a program to give to bash to execute

#! /bin/bash : Used to start the script
here #! is the hashbang or shebang
here /bin/bash is path to the executable which runs the script

'#' added before the line is for comments

## Creating a bash script

Use vim or nano to create the script

use ./-scriptname-.sh to run the script with bin/bash already given in the script as the executable

use chmod +x my.sh to make the script executable
./my.sh will run the script