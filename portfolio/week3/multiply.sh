#!/bin/bash

#
echo -e "\e\033[31m"
read -p "Type the first number: " numberone

#if valid integer only

if [ "$numberone" -ge 0 ] 2>/dev/null ; 
then

    #multiply number one with two and display output

    read -p "Type the second number to multiply: " numbertwo
    echo "The answer is : "
    expr $numberone \* $numbertwo
    
else

    #otherwise, print an error
    echo "Sorry! I couldnt do that"

fi
echo -e "\e[0m"
exit 0