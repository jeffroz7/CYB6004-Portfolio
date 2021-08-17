#!/bin/bash

# Collection of grep statements that utilise regular expressions (regex) to search files.

# Search for all sed statements
grep -r sed

# Search for all lines that start with the letter m.
grep -r "^m"

# This line searches for all lines that start with "m". The -i flag makes the grep search case insensitive.
grep -ir "^m" 

# Search for all lines that contain three digit numbers.
# The quantifier on the right of \d means that we want 3 digits.
# The position character \b is the word boundary and means we are only matching the three digits.
grep -Pr '\b\d{3}\b'

# Search for all echo statements with at least 3 words.
grep -r 'echo [A-Za-z]{3}'
#\b[A-Za-z]+\b - defines a word that contains only letters.

# Search for all lines that would make a good password.
# Define a good password as:
# - At least 16 characters long.
# - At least one number from 0-9.
# - At least one capital letter.
# - At least one special character.

grep -r '\b.*[0-9]+[A-Z]+

echo "Hello there sir"
echo "Hello there"
echo "hello hello hello goodbye"