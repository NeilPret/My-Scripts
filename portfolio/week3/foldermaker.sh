#!/bin/bash
# This script creates a new folder named by the script user in the current working folder

read -p 'Type the name of the folder : ' folder_var
mkdir "$folder_var"

exit 0