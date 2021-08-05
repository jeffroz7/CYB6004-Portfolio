#!/bin/bash

#takes the user input for the username and passowrd and saves them to the respctive variables $username and $password.
read -p "Username: " username
read -sp "Password: " password

#blank echo command to make the code look nicer when executed - serves no functional purpose.
echo

#takes the password variable and outputs it to the hash encrypter using the pipe operator. The hashed password is then sent to the text file secret.txt
echo $password | sha256sum > secret.txt

#the above command uses > rather than the operand ">>", therefore overwriting any previous password that was entered.
echo

echo "Password changed successfully."