#!/bin/bash
 
# creates line for user to input the name of the folder they would like to copy. Creates variable for that folder.

read -p "Type the name of the folder you would like to copy: " folderName 
      
# if the name is a valid directory 
# the -d operator sees whether the variable folderName exists and is a directory. If the folder exists, the below if loop asks the user to input the new folder name.
      
if [ -d "$folderName" ]; then  

    read -p "Type the name of the destination folder: " newFolderName 

    # the cp -r command copies the folder recursively - that is, all of the files in the folder will be copied, along with all files in any subdirectories etc.

    cp -r "$folderName" "$newFolderName" 

    echo -e $'\033[1;35m'"Copy successful"$'\033[0m'
      
else

    # this command line is run if the folder entered by the user i the first read line does not exist. 
    # the echo command prompts the user that the file does not exist

    echo -e $'\033[0;31m'"I couldn't find that folder."$'\033[0m' 
      
fi 