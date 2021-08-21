#!/bin/bash

# check if user wants to use the calculator
#if yes then calculator is opened and user given access

/bin/bash ./yesorno.sh

if [ $? = 1 ]
then
    echo "closing down calcultor"
    exit 1
else
    clear
    echo " 1: Do you wish to multiply?"
    echo " 2: Do you wish to do divide?"
    echo " 3: Do you wish to add?"
    echo " 4: Do you wish to subtract3?"
    read -p "Please select an option from the above below: " option_var
    case "$option_var" in
        1) echo "you chose option 1 which was to multiply 2 numbers"
            /bin/bash ./multiply.sh
            echo "Goodbye"
            exit
            ;;
        2) echo "you chose option 2 which was to devide 2 numbers"
            /bin/bash ./devide.sh
            echo "Goodbye"
            exit
            ;;
        3) echo "you chose option 3 which was to add 2 numbers"
            /bin/bash ./add.sh
            echo "Goodbye"
            exit
            ;;
        4) echo "you chose option 3 which was to subtract 2 numbers"
            /bin/bash ./minus.sh
            echo "Goodbye"
            exit
            ;;
    esac     

fi