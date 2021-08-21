#!/bin/bash
# user has a file with a hash
# User enters password
# Password saving to file hashed
# User compare file with hash to password

read -sp "password : " password_var

echo $password_var | sha256sum > secret2.txt

file1=~/student/scripts/portfolio/week2/secret.txt
file2=~/student/scripts/portfolio/week2/secret2.txt

if cmp -s "$file1" "$file2"
then
    echo "Access Granted"
    exit 0

else
    echo "Access Denied"
    exit 1

fi
