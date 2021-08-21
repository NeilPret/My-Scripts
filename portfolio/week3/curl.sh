#!/bin/bash

# read input from user and add to url
#read -p "Type a number between 11110 and 55000: " numberOne
url=https://www.ibm.com/docs/en/snips/4.6.0?topic=categories-authentication-attacks

output1="curled.txt"


curl -o $output1 $url
