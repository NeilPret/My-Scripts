#!/bin/bash

# Case statement to manage the menu options

if [ $continue = no ]
then
    # If password check fails project exit
    echo "Something went wrong, please try again"
    exit 1
else
    # If password check does not fail, user can continue
    # User can select from the options displayed to user below
    clear
    echo -e "\e\033[34m" #color change
    figlet " Welcome to the Neilpret project"
    echo -e "\e[0m" #color to normal
    
    echo " Please select one of the options below to continue"
    
    echo -e "\e\033[92m" #color change
    echo " 1: Select to learn about Cyber Security"
    echo -e "\e[0m" #color to normal
    
    echo -e "\e\033[93m" # color change
    echo " 2: Set a new password"
    echo -e "\e[0m" #color to normal
    
    echo -e "\e\033[95m" # color change
    echo " 3: Make a folder"
    echo -e "\e[0m" #color to normal
    
    echo -e "\e\033[96m" #Color change
    echo " 4: Copy a file"
    echo -e "\e[0m" #Color to normal
    
    echo -e "\e\033[41m" #color change
    echo " 5: Exit"
    echo -e "\e[0m" #color to normal

# asks user for input selection
    read -p "Please select an option that you would like to see: " option_var
    case "$option_var" in
        # User can scrape a website with url in curl.sh if this option below
        1) echo "You chose option 1 to learn more about data scraping"
            /bin/bash ./curl.sh
            exit 0
            ;;
        # User can set a new hashed password with the option below
        2) echo "You chose option 2 to set a new password"
            /bin/bash ./setPassword.sh
            exit 0
            ;;
        # User can make a folder
        3) echo "You chose option 3 which was make a new folder"
            /bin/bash ./foldermaker.sh
            exit 0
            ;;
        # User can copy to a folder
        4) echo "You chose option 4 which was to copy a folder"
            /bin/bash ./foldercopier.sh
            exit 0
            ;;
        # User can exit the project
        5) echo "You chose option 5 which was to exit"
            echo "Thank you for using the Project, please feel free to try again later"
            exit 0
            ;;
    esac     

fi