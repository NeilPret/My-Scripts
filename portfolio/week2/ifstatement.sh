#! /bin/bash

read -p 'Type your value: ' value 

if [ $value -lt 25 ]
then
    echo "Value is less then 25"
else
    echo "Value is 25 or higher"    
fi
exit 0
