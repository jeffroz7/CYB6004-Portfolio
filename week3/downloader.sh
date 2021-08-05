#!/bin/bash

#Create a loop that keeps cycling so long as the value of i>0 - after each iteration, the value of i increases by one. 
#As such, the value of i is ALWAYS greater than zero, so the loop is only broken by the user.
#This loop could be edited to break after a certain number of cycles, i.e. setting ((i=0; i<x; ++i)) would run the cycle for a maximum of x times.

for ((i=1; i>0; ++i)); do

    #The word "exit" is displayed on the screen in red.
    read -p $'Enter a website URL or type \e[35m"exit"\e[0m to quit: ' website

    case $website in

    exit)

        LPurp='\033[1;35m'
        NoCol='\033[0m'

        echo -e $LPurp"Goodbye"$NoCol
        echo
        exit 0

        ;;

    *)


        #Another prompt for the user could be added here to allow them to terminate the process like the first prompt.
        read -p "Where would you like to save the file? " folder

        if [[ -d $folder ]]; then

            cd $folder

            wget -q $website

            echo "File saved."

        else

            #If the user specifies an invalid directory, then the cycle starts again from the top. 
            Red='\033[0;31m'
            echo -e $Red"Error: Directory not found."$NoCol

        fi
    
        ;;

    esac

done