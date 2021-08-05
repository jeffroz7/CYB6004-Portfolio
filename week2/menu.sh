#!/bin/bash

./passwordCheck.sh

# The below if statement determines whether the exit code of passwordCheck.sh is 0 (correct password) or 1 (incorrect password).

if [[ $? = "0" ]]

# 3 lines of echo statements provide the user with options of what they can do.

then

    echo
    echo "1. Create a folder"
    echo "2. Copy a folder"
    echo "3. Set a password"
    echo

# Stores the user's selection as the variable option.

read -p "Select an option: " option

# The case statement launches one of 3 scripts based on what option the user selected. If something other than option 1, 2 or 3 is chosen, the user is prompted with an error message.

case $option in

    1) ./foldermaker.sh;;
    2) ./foldercopier.sh;;
    3) ./setPassword.sh;;
    *) echo "Error: invalid selection";;

esac

else

    # If the exist statement is 1, then the password was not entered correctly and thus the user does not have access to the above menu.

    exit 1
fi