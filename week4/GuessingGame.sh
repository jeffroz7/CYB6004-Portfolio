#!/bin/bash

# Specify the 2 functions to be used in the script.

printError()

{

    echo -e "\033[31mERROR:\033[0m $1"

}

# getNumber() function has been edited from the "GetNumber.sh" script in order to accomodate the different conditions required for the task.
# The while loop below is active only if the number input by the user is not 42.S

getNumber()

{

    read -p "$1: "

    while (( $REPLY != $4 )); do

        # If the number input is less than 1 and greater than 100, return an error.
        if [[ $REPLY -lt $2 || $REPLY -gt $3 ]]; then

            printError "Input must be between $2 and $3"
            read -p "$1: "

        # If the number is less than 42, we let the user know this by printing "Too Low!""
        elif [[ $REPLY -lt $4 ]]; then

            printError "Too low!"
            read -p "$1: "

        # If the number is greater than 42, we let the user know this by printing "Too High!"
        elif [[ $REPLY -gt $4 ]]; then 

            printError "Too High!"
            read -p "$1: "
        
        fi

    done

}

# If the number does not meet any of the above situations, that is the number input is 42, then the while loop closes and we pass through to the below input.
echo "Let's play a game"

#echo "Guess the number!" 
# An alternative welcoming message for the user. Changed to line 49 to work with Week 5.3 activities.

getNumber "Choose a number between 1 and 100" 1 100 42
#echo -e $'\033[1;36m'Correct!$'\033[0m' - Prints "Correct" in cyan.
echo "Right!"