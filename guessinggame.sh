#!/usr/bin/env bash
# File: guessinggame.sh
# Guess number of files in the current directory

# Function "Ranswer"
function ranswer { 
    echo "You answered $response"
    echo "You are right! There are $nfiles files in the current directory."
}

#Count the number of files in the directory
nfiles=$(ls | wc -l)

#Greetings
echo "Hello. Tell me, please, how many files are in the current directory?"
read response

#Verify answer
while [[ $response -ne $nfiles ]]
do 
    if [[ $response -gt $nfiles ]]
    then 
	    echo "Too big, tray again"
	    read response
    else
	    echo "Too small, try again"
	    read response
    fi
ranswer
done
