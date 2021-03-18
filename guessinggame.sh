#!/usr/bin/env bash
# File: guessinggame.sh
# Guess number of files in the current directory

#Function "Right answer"
function ranswer {
    echo "You answered $response"
    echo "You are right! There are $nfiles files in the current directory."
}

#Count number of files in the directory
nfiles=$(ls | wc -l)

#Greetings
echo "Hello. Tell me, please, how many files are in the current directory?"
read response

#Verify answer
if [[ $response == $nfiles ]]
then 
    ranswer
else
    while [[ $response != $nfiles ]]
    do 
	if [[ $response =~ [a-zA-Z] ]]
	then 
	    echo "Enter a number, not a string."
	    read response
	elif [[ $response < $nfiles ]]
	then
	    echo "Too small, try again"
	    read response
        else
	    echo "Too big, tray again"
	    read response
	fi
    done
    ranswer
fi

