#!/bin/bash

# The -p flag allows the user to type on the same line as read.
# The -s flag hides the user input.
read -sp "password: " pass

echo

# Creates a variable that is the hash of $pass
check_pass=$( echo $pass | sha256sum )

# Assigns a variable to the contents of the secret.txt file, which is the hash of the password that is set by the user.
set_pass=$( cat secret.txt )

# A simple if statement that sees whether the hash of the input password matches the hash of the password set by the user.
# If so, the user is granted access and the exit code is 0 (successful).
# If not, the user is denied access and the exit code is 1, which is the exit code that we have set as failed.
if [[ $check_pass == $set_pass ]]; then
	echo "Access granted."
	exit 0
else
	echo -e ${RED}"Access denied."
	echo "Better luck next time..."
	exit 1
fi