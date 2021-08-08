#! /bin/bash

read -p 'Type your value: ' value 

if [ $value -lt 25 ]
then
    echo "Value is less then 25"
elif [ $value -gt 25 ]    
then
    echo "Value is higher than 25"
elif [ $value -eq 25 ]    
then
    echo "Value is equal to 25"
else
    echo "Invalid input"
fi
exit 0