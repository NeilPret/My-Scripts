#!/bin/bash

secret='shhh' #Don't tell anyone!
read -s -p "what's the secret code?" REPLY

#if the user types the correct secret, tell them they got it right!
if [ "$secret" = "$REPLY" ]; then
    echo "You got it right!"
    correct=true
else    
    echo "You got it wrong :("
    correct=false
fi

echo "correct"
case $correct in
false)
    echo "Go Away!" #people who get it wrong need to be told to go away!
    ;;
true)
    echo "you have unlocked the secret menu!"
#TODO: add a secret menu people in the know.
;;
esac