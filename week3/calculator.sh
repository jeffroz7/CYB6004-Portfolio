#!/bin/bash

# Beginning of user interaction menu for the calculator

echo "Welcome to the Bash calculator!"
echo
read -p "Please enter 2 numbers: " num1 num2
echo
echo "Available operations:"
echo
echo -e $'\033[1;34m'"1. Addition"
echo -e $'\033[0;32m'"2. Subtraction"
echo -e $'\033[0;31m'"3. Multiplication"
echo -e $'\033[0;35m'"4. Division"$'\033[0m'
echo
read -p "Please choose an operation: " operation
echo

# Determines which calculation is run depending on the user input.
# The below choices for the calculator can be done using both case and if statements.
# My initial script was scripted using if statements.
# I updated and used case statements once I realised how to have multiple inputs lead to the same outcome, i.e., the user typing 1, addition or Addition will lead to an addition calculation being processed.

case $operation in
#if [[ $operation -eq 1 ]] || [[ $operation == "Addition" ]] || [[ $operation == "addition" ]]; then
1|Addition|addition)

        echo "Calculation complete."
        answer=$( echo "scale=4; ($num1+$num2)" | bc )
        echo -e "Your answer is" $'\033[1;34m'"$answer"$'\033[0m'
        echo
        ;;

#elif [[ $operation -eq 2 ]] || [[ $operation == "Subtraction" ]] || [[ $operation == "subtraction" ]]; then
2|Subtraction|subtraction)

        echo "Calculation complete."
        answer=$( echo "scale=4; ($num1-$num2)" | bc )
        echo -e "Your answer is" $'\033[0;32m'"$answer"$'\033[0m'
        echo
        ;;

#elif [[ $operation -eq 3 ]] || [[ $operation == "Multiplication" ]] || [[ $operation == "multiplication" ]]; then
3|Multiplication|multiplication)

        echo "Calculation complete."
        answer=$( echo "scale=4; ($num1*$num2)" | bc )
        echo -e "Your answer is" $'\033[0;31m'"$answer"$'\033[0m'
        echo
        ;;

#elif [[ $operation -eq 4 ]] || [[ $operation == "Division" ]] || [[ $operation == "division" ]]; then
4|Division|division)

        echo "Calculation complete."
        echo "Your answer is..."
        answer=$( echo "scale=4; ($num1/$num2)" | bc )
        echo -e ${Purple}"$answer"${NoCol}
        echo
        ;;

#else
*)
        echo -e $'\033[0;31m'"Error: Please choose a valid operation."$'\033[0m'
        echo
        ;;
#fi
esac

exit