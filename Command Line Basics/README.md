## Navigation

Use Ctrl+C to cancel a command 

Use Ctrl+A and Ctrl+E to go to beginning and end of a command

Use Ctrl+Arrow keys for go through words 

Use Ctrl+U to delete from current cursor to start

Use Ctrl+K to delete from current cursor to end

Search command history with Ctrl+R

See history with 'history' command and user !-commandnumber- to reuse command

Press tab twice to get suggestions to complete a command


## Useful basic linux commands

```
ls -l : List the contents of the folder

man -command name- : Open the manual pages for the command
(Inside man pages , use f, b, space for navigation and h for help)

--help : Add to a command to see its help guide

file - Get more info about a file

stat - Get other info about a file

cd  - : Go to previous folder 

apropos : Look up a command name or description

cp : Copy a file

mv : Move or Rename a File

mkdir : Create a folder (adding -p creates parent directories)

rmdir -rf : Remove a directory with rf options for recursive and forced

rm : Remove a file

find : locate files and folders (example find / -name "myfile" or find . -name "poe*")

sudo : Temporarily use the privileges of the superuser

sudo su or sudo -s : Switch to root user (use exit to quit)

chmod : Change file permission mode

cat : Attach two files together or open a file

head : See top lines of a file

tail : See bottom lines of a file

less : Direct text output to browsable view

ln - Create hard or soft symbolic links to files (soft links break if file is moved)

echo : display text

rev : reverse print the file 
```

## Useful advanced linux commands

```
'*' : Wildcard for anything

'?' : Wildcard for only one character 

| : Create pipes between commands (Connect them in middle with |)

wc: Display lines, words and characters in given input

grep: search a string or file for text or a regex (eg. grep "the" poems.txt)
(Use options -n for which line, -i for no case sensitive, -v for non-searched lines)

awk : extract and modify text from a file or text stream

sed : process lines of text from a file or text stream

sort : Change the display order of lines of text\
(Use -n for numeric sort, -u for unique lines)

tar : Create or extract from a tape archive file
(create with tar cvf and caf, open with tar xf)

zip : Create a zip archive
(for cross platform archives)

unzip : Extract from a zip archive

'>' : redirect output between commands and files

'>>' : redirect output but append not replace

env : display environment variables

~/.profile : Shell settings for the user (list of PATH)

tree : Show folder hierarchy visually

chown : Change owner of a file

chgrp : Change group of a file

0,1 and 2 : Represent standard input, output and error
(eg. ls 1 > filelist.txt)
```

## Useful basic system info commands
```
uname : View information about operating system

free -h : View information about system memeory

df : Show used and free space on filesystem

sudo lshw : Show system hardware

ip a : Show Network Adapter Info

See system IP : curl ifconfig.me

ls -lah /etc/*release : distro and kernel info

cat /proc/cpuinfo
```

## Commonly folders of the linux filesystem
/ : root

Inside root -
home : users home folders
root : root's home folder
etc : Config files for tools
bin and sbin : binaries 
lib : libraries and shared modules
dev : devices on the system
mnt : local and remote filesystem mounts
media : removable storage mounts
proc : virtual processes
sys : kernel virtual values







