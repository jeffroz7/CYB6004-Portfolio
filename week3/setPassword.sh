#!/bin/bash

# Takes the user input for the username and passowrd and saves them to the respctive variables $username and $password.
read -p $'\e[0;36mEnter your username: \e[0m' username
read -sp $'\e[0;36mEnter your new password: \e[0m' password

# Blank echo command to make the code look nicer when executed - serves no functional purpose.
echo

# Takes the password variable and outputs it to the hash encrypter using the pipe operator. The hashed password is then sent to the text file secret.txt
echo $password | sha256sum > secret.txt
# The above command uses > rather than the operand ">>", therefore overwriting any previous password that was entered.

echo

# Prints the password change success message in green.
echo -e $'\e[0;32mPassword changed successfully.\e[0m'