#!/bin/bash
# user has a file with a yes answer
# User enters if they want to use the calculator
# files are compared and user is given access to calculator or greeted goodbye

read -sp "Do you want to use the calculator? yes or no : " answer_var

echo $answer_var > secret2.txt

file1=~/student/scripts/portfolio/week3/secret.txt
file2=~/student/scripts/portfolio/week3/secret2.txt

if cmp -s "$file1" "$file2"
then
    echo "Opening Calculator"
    exit 0

else
    echo "Thank you have a nice day!"
    exit 1

fi
