#!/bin/bash

if [ -f $1 ]; then

    # If the file exists, then proceed with the script.

    # Want to create a for-loop that cycles through each line of the file.
    while read line; do

        if [[ -f $line ]]; then

            echo "$line - That file exists."

        elif [[ -d $line ]]; then

            echo "$line - That's a directory."
        
        elif [[ -z $line ]]; then

            :
            # The null command ":" is used to output nothing when there is a line that is blank - i.e. the string is empty.

        else

            echo "$line - I don't know what that is."

        fi
    
    done <$1

else 

    # If the file DNE, then terminate the script.

    echo "Error: file not found"
    exit 1

fi