#! /bin/bash
# This stores the ping from a website after extraction and prints on the screen

a=$(ping -c 1 example.com | grep 'bytes from' | cut -d = -f 4)
echo "The ping was $a"