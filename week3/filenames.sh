#!/bin/bash

# Command line prompt for user to specify a file to be checked.
read -p "Please specify a file: " file

# Create a varible that will allow the script to work through each line of text in the file.
read_file=$( cat $file )

if [ -f $file ]; then

    # If the file exists, then proceed with the script.

    # Want to create a for-loop that cycles through each line of the file.
    for line in $read_file; do
    
        if [[ -f $line ]]; then

            echo -e "$line -" $'\033[0;32m'"That file exists."$'\033[0m'

        elif [[ -d $line ]]; then

            echo -e "$line -" $'\033[1;33m'"That's a directory."$'\033[0m'
        
        elif [[ -z $line ]]; then

            :

            # The null command ":" is used to output nothing when there is a line that is blank - i.e. the string is empty.

         else

            echo -e "$line -" $'\033[0;31m'"I don't know what that is."$'\033[0m'

    fi
    
done

else 

    # If the file DNE, then terminate the script.

    echo -e $'\033[0;31m'"Error: file not found"$'\033[0m'
    exit 1

fi