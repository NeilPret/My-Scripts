#!/bin/bash
# menu items each with their own purpose
clear
echo "Please provide the password to continue"

# Ask user for a password, hash the password and compare hash with saved file hash
# If hash compares successfully user can continue "Pete"
/bin/bash ./passwordCheck.sh

# Check successful operation by chekcing exit code

if [ $? = 1 ]
then
    # If password check fails project exit
    echo "Something went wrong, please try again"
    exit 1
else
    # If password check does not fail, user can continue
    # User can select from the options displayed to user below
    clear
    echo " Welcome to Neil Pretorius project"
    echo " Please select one of the options below to continue"
    echo " 1: Learn more about Data Scraping"
    echo " 2: Set a new password"
    echo " 3: Exit"
    read -p "Please select an option that you would like to see: " option_var
    case "$option_var" in
        # User can scrape a website with the option below
        1) echo "you chose option 1 to learn more about data scraping"
            /bin/bash ./curl.sh
            echo "Goodbye"
            exit 0
            ;;
        # User can set a new hashed password with the option below
        2) echo "you chose option 2 to set a new password"
            /bin/bash ./setPassword.sh
            echo "Goodbye"
            exit 0
            ;;
        # User can exit the project without having to make anymore selections
        3) echo "you chose option 3 which was to exit"
            echo "Thank you for using the Project, please feel free to try again later"
            exit 0
            ;;
    esac     

fi