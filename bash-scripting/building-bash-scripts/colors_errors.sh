#! /bin/bash
#Different color styles are stored in variables and used for text

flashred="\033[5;31;40m"
red="\033[31;40m"
none="\033[0m"
echo -e $flashred"ERR0R: "$none$red"Something went wrong."$none

flashred=$(tput setab 0; tput setaf 1; tput blink)
red=$(tput setab 0; tput setaf 1)
none=$(tput sgr0)
echo -e $flashred"ERR0R: "$none$red"Something went wrong."$none