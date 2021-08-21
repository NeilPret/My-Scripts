#!/bin/bash
# User enters username and password
# Password saving to file in plain text
# Move plain text file to another folder

read -p 'foldername : ' folder_var
read -p 'username : ' username_var
read -sp 'password : ' password_var
mkdir "$folder_var"
echo "$password_var" | sha256sum > secret.txt
mv -i secret.txt $folder_var
exit 0