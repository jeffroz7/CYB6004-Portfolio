#!/bin/bash

# Specify the 2 functions to be used in the script.

printError()

{

    echo -e "\033[31mERROR:\033[0m $1"

}

# getNumber() function has been edited from the "GetNumber.sh" script in order to accomodate the different conditions required for the task.

getNumber()

{

    read -p "$1: "

    while (( $REPLY != $4 )); do

        if [[ $REPLY -lt $2 || $REPLY -gt $3 ]]; then

            printError "Input must be between $2 and $3"
            read -p "$1: "

        elif [[ $REPLY -lt $4 ]]; then

            printError "Too low!"
            read -p "$1: "
        
        elif [[ $REPLY -gt $4 ]]; then 

            printError "Too High!"
            read -p "$1: "
        
        fi

    done

}


echo "Guess the number!"
getNumber "Choose a number between 1 and 100" 1 100 42
echo -e $'\033[1;36m'Correct!$'\033[0m'
#echo "Correct!"