#!/bin/bash
# This script hashes the users password into sha26sum and display

read -p 'Type your password: ' password_var 
echo $password_var | sha256sum

exit 0