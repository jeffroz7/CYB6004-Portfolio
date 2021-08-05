#!/bin/bash

#If there aren't two arguments to the script, then give the user an error.

if (( $#!=2 )); then 
      
    #Print an error and exit 
      
    Red='\033[0;31m'
    NoCol='\033[0m'

    echo -e $Red"Error: provide two numbers"$NoCol && exit 1 
      
fi 
      
#For every number between the first argument and the last 
      
for ((i = $1; i <= $2; i++)) 
      
do 
      
    #Create a new folder for that number 
    
    LGre='\033[1;32m'

    echo -e $LGre"Creating directory number $i"$NoCol 
      
    mkdir "week$i"
      
done 