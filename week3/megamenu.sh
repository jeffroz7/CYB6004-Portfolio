#!/bin/bash

# Creates variables for different colours to be used in the script.
# I chose to use words instead of just the code for this script due to each letter in line 30 having a different colour.

Red='\033[0;31m'
Blu='\033[0;34m'
Gre='\033[0;32m'
Purp='\033[0;35m'
Cy='\033[0;36m'
NoCol='\033[0m'
Yel='\033[1;33m'
Bro='\033[0;33m'
LGre='\033[1;32m'
LPurp='\033[1;35m'
LRed='\033[1;31m'
LCy='\033[1;36m'

# The below script runs a password check.
./passwordCheck.sh

# The below if statement determines whether the exit code of passwordCheck.sh is 0 (correct password) or 1 (incorrect password).
# The variable #? is the exit code status of passwordCheck.sh
if [[ $? = "0" ]]; then

    # Create a C-like for loop for all of the different menu options.
    # The user is only able to "access" this menu if the exit code of the passwordCheck.sh script is 0.
    # In passwordCheck.sh, we set the exit code of the script as 0 if the user enters the correct password.

    for ((i = 1; i > 0; ++i)); do

        # Below creates a list of things the user can do in the menu.
        echo -e $Red"W"$Blu"e"$Gre"l"$Purp"c"$Cy"o"$Yel"m"$Bro"e" $Red"t"$Blu"o" $Gre"t"$Purp"h"$Cy"e" $Yel"M"$Bro"e"$Red"n"$Blu"u"$NoCol
        echo
        echo -e $LCy"1. Create a folder"
        echo -e "2. Copy a folder"
        echo -e "3. Set a password"
        echo -e "4. Calculator"
        echo -e "5. Create Week Folders"
        echo -e "6. Check File Names"
        echo -e "7. Download a File"
        echo -e "8. Exit"$NoCol
        echo

        # Stores the user's selection as the variable 'option'.
        read -p "Select an option: " option

        case $option in

            # Executes a different script depending on the user input, or exits the menu.
            1) ./foldermaker.sh;;
            2) ./foldercopier.sh;;
            3) ./setPassword.sh;;
            4) ./calculator.sh;;
            5) 

                # megafoldermaker.sh takes 2 command line variables as input.
                # Therefore, in order for the user to be able to run megafoldermaker.sh correctly, it needs 2 command line arguments/variables.
                # The two read prompts ask the user for "from" and "to" week numbers and add them as command line variables, allowing megafoldermaker.sh to run correctly.
                read -p "Create folders from Week: " val_1
                read -p "To Week: " val_2
                ./megafoldermaker.sh $val_1 $val_2
                ;;

            6) ./filenames.sh;;
            7) ./downloader.sh;;
            8|exit|Exit) 

                echo -e "$LPurpGoodbye$NoCol\n"
                exit 
                ;;

            *) echo -e $Red"Error: invalid selection"$NoCol;;

        esac

    done

else

    # If the exit statement is 1, then the password was not entered correctly and thus the user does not have access to the above menu.
    # We set the exit code for a failed login attempt in passwordCheck.sh as 1.
    exit 1

fi