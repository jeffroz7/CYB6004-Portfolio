#!/bin/bash

read -p "Type file name here: " folderName

mkdir "$folderName"

echo -e $'\033[0;32m'"Folder $folderName created."$'\033[0m'