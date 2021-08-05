#!/bin/bash

# An array of the fruit names we want to print. There are 5 elements in the array, starting with fruits[0]='Apples'
fruits=('Apple' 'Mango' 'Strawbery' 'Orange' 'Banana')

# A for-loop that starts at i=0 and is incremented to i=4.
for (( i = 0; i < 5; ++i )); do

    echo ${fruits[$i]} 
    # Echos the ith element of the fruits array. 

    sleep 1
    # Delays the loop by 1 second.

done
