#!/bin/bash

/bin/bash ./passwordCheck.sh

if [ $? = 1 ]
then
    echo "Goodbye"
    exit 1
else
    clear
    echo " 1: Create a folder"
    echo " 2: Copy a folder"
    echo " 3: Set a new password"
    read -p "Please select an option from the above below: " option_var
    case "$option_var" in
        1) echo "you chose option 1"
            /bin/bash ./foldermaker.sh
            echo "Goodbye"
            exit
            ;;
        2) echo "you chose option 2"
            /bin/bash ./foldercopier.sh
            echo "Goodbye"
            exit
            ;;
        3) echo "you chose option 3"
            /bin/bash ./setPassword.sh
            echo "Goodbye"
            exit
            ;;
    esac     

fi