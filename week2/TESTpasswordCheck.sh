#!/bin/bash

# This script is a test script for Week 2.4. 
# The script runs and gives the desired outcome, however it prints a warning message when the sha256sum -c command fails (i.e. passwords don't match).
# I am currently unable to resolve this issue.

read -sp "password: " pass

echo

# create a variable that is the output message of the sha256sum check command.
check_pass=$( echo $pass | sha256sum -c secret.txt)

# use the check_pass variable to determine whether or not the passwords match and thus what message is given to the user.
if [[ $check_pass = "-: OK" ]]
then
    echo "Access granted."
    exit 0
else
    echo "Access denied."
    echo "Better luck next time."
    exit 1
fi