#!/bin/bash

# add 2 numbers together
echo -e "\e\033[34m"
read -p "Type the first number: " numberone

#if valid integer only

if [ "$numberone" -ge 0 ] 2>/dev/null ; 
then

    #add number one with two and display output

    read -p "Type the second number to add: " numbertwo
    echo "The answer is : " expr $numberone + $numbertwo
    
else

    #otherwise, print an error
    echo "Sorry! I couldnt do that"

fi
echo -e "\e[0m"
exit 0