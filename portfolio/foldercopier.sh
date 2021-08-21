#!/bin/bash
#copies folder to another location if correct source folder is called

read -p "Type the name of the folder you would like to copy : " folderName

#if the name is valid directory

if [ -d "$folderName" ]; 
then

    #copy it to the new location

    read -p "Type the name of the destination folder : " newFolderName

    cp -r "$folderName" "$newFolderName"
    
else

    #otherwise, print an error
    echo "I couldnt find that folder"

fi
exit 0