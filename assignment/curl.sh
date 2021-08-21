#!/bin/bash

# url for data scraping
echo "Scraping onlinedegrees.und.edu, please wait while we collect the data "
url=https://onlinedegrees.und.edu/blog/types-of-cyber-security-threats/

#output variable as follows
output1="curled.txt"

#Scrape url using curl and place output in txt file
curl -so $output1 $url

#case statement to manage the menu item selections
if [ $continue = no ]
then
    # If password check fails project exit
    echo "Something went wrong, please try again"
    exit 1
else
    # If password check does not fail, user can continue
    # User can select from the menu options displayed to see more detail
    clear
    echo -e "\e\033[34m"
    figlet "Seven types of Cyber Security"
    echo -e "\e[0m"
    echo "www.onlinedegrees.und.edu describes it as the following:"
    echo " Please select one of the options below to continue"
    echo " 1: Malware"
    echo " 2: Emotet"
    echo " 3: Denial of Service"
    echo " 4: Man in the Middle"
    echo " 5: Phishing"
    echo " 6: SQL Injection"
    echo " 7: Passwords Attacks"
    echo " 8: Return to Main Menu"
    echo -e "\e\033[41m"
    echo " 9: Exit"
    echo -e "\e[0m"

        #user can select an option to view more   
    read -p "Please select an option that you would like to see: " option_var
    case "$option_var" in
        # User can see moe detail on Malware
        1)  clear
            figlet "Malware is: "
            echo "***************************************************************"
            awk -F":" 'NR==179' ~/student/scripts/portfolio/Assignment/curled.txt | sed -e 's/^...//' -e 's/....$//'
            echo "***************************************************************"
            read -sp "Ready to continue? "
            /bin/bash ./curl.sh
            exit 0
            ;;
        # User can see more detail on Emotets
        2)  clear
            figlet "Emotet is: "
            echo "***************************************************************"
            awk -F":" 'NR==187' ~/student/scripts/portfolio/Assignment/curled.txt | sed -e 's/^...//' -e 's/....$//' 
            echo "***************************************************************"
            read -sp "Ready to continue? "
            /bin/bash ./curl.sh
            exit 0
            ;;
        # User can see more detail on Denial of Service
        3)  clear
            figlet "Denial of Service"
            echo "***************************************************************"
            awk -F":" 'NR==189' ~/student/scripts/portfolio/Assignment/curled.txt | sed -e 's/^...//' -e 's/....$//'
            echo "***************************************************************"
            read -sp "Ready to continue? "
            /bin/bash ./curl.sh
            exit 0
            ;;
        # User can see more detail about man in the middle attacks
        4)  clear
            figlet "Man in the Middle"
            echo "***************************************************************"
            awk -F":" 'NR==191' ~/student/scripts/portfolio/Assignment/curled.txt | sed -e 's/^...//' -e 's/....$//'
            echo "***************************************************************"
            read -sp "Ready to continue? "
            /bin/bash ./curl.sh
            exit 0
            ;;
        # User can see more detail about Phishing
        5)  clear
            figlet "Phishing"
            echo "***************************************************************"
            awk -F":" 'NR==193' ~/student/scripts/portfolio/Assignment/curled.txt | sed -e 's/^...//' -e 's/....$//'
            echo "***************************************************************"
            read -sp "Ready to continue? "
            /bin/bash ./curl.sh
            exit 0
            ;;
        # User can see more detail about SQL Injections
        6)  clear
            figlet "SQL Injections"
            echo "***************************************************************"
            awk -F":" 'NR==195' ~/student/scripts/portfolio/Assignment/curled.txt | sed -e 's/^...//' -e 's/....$//'
            echo "***************************************************************"
            read -sp "Ready to continue? "
            /bin/bash ./curl.sh
            exit 0
            ;;
        # User can see more detail about Password attacks
        7)  clear
            figlet "Passwords Attacks"
            echo "***************************************************************"
            awk -F":" 'NR==197' ~/student/scripts/portfolio/Assignment/curled.txt | sed -e 's/^...//' -e 's/....$//'
            echo "***************************************************************"
            read -sp "Ready to continue? "
            /bin/bash ./curl.sh
            exit 0
            ;;
        # Return user to main menu
        8)  clear
            echo "Return to Main Menu"
            /bin/bash ./MyProject.sh
            exit 0
            ;;
         # User can exit the project without having to make anymore selections
        9)  clear
            figlet "You chose to exit"
            echo "***************************************************************"
            echo "Thank you for using the Project, please feel free to try again later"
            echo "***************************************************************"
            exit 0
            ;;
    esac     

fi