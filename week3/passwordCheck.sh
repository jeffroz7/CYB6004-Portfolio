#!/bin/bash

# Colours the password prompt line yellow. Was unable to get the
read -sp $'\e[1;33mPlease enter your password: \e[0m ' pass
echo
echo

# Creates a variable that is the hash of $pass
check_pass=$( echo $pass | sha256sum )

# Assigns a variable to the contents of the secret.txt file, which is the hash of the password that is set by the user.
set_pass=$( cat secret.txt )

# A simple if statement that sees whether the hash of the input password matches the hash of the password set by the user.
# If so, the user is granted access.
# If not, the user is denied access.
if [[ $check_pass == $set_pass ]]; then
	echo -e $'\033[0;32m'"Access granted."$'\033[0m'
	echo
	exit 0
else
	echo -e $'\033[0;31m'"Access denied."
	# echo -e "Better luck next time..." 
	figlet "Better luck next time..."
	#echo -e $'\033[0m'
	exit 1
fi

# References
# https://www.shellhacks.com/bash-colors/