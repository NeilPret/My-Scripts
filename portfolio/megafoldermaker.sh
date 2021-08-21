#!/bin/bash

#if there arent two arguments to the script

mkdir "/home/neil/student/scripts/portfolio/week4"
## mkdir "~/student/scripts/portfolio/week5"

if (( $#!=2 )); then
    #print and error and exit
    echo "Error,provide two numbers" && exit 1
fi

#For every number between the first argument and the last

for (( i = $1; i <= $2; i++ ))

do

    #create a new folder for that number

    echo "creating directory number $i"

    mkdir "week $i"

done


