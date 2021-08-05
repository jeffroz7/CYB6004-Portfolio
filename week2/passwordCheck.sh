#!/bin/bash

read -sp "password: " pass

echo

# creates a variable that is the hash of $pass
check_pass=$( echo $pass | sha256sum )

# assigns a variable to the contents of the secret.txt file, which is the hash of the password that is set by the user.
set_pass=$( cat secret.txt )

# a simple if statement that sees whether the hash of the input password matches the hash of the password set by the user.
# if so, the user is granted access.
# if not, the user is denied access.
if [[ $check_pass == $set_pass ]]; then
	echo "Access granted."
	exit 0
else
	echo -e ${RED}"Access denied."
	echo "Better luck next time..."
	exit 1
fi