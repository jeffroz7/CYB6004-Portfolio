#!/bin/bash
apiPath = "https://api.exchangerate-api.com/v4/latest/EUR"
fileName="index.html"
Browsers= "google-chrome firefox"

if $Browsers
then
google-chrome $fileName&
else
firefox $fileName&
fi

while :;
do
#<--code-->
curl -s https://api.exchangerate-api.com/v4/latest/EUR | jq '.base'
curl -s $apiPath  | jq '.rates.GBP'
GBP=$((curl -s $apiPath  | jq '.rates.GBP') | sed 's/"//g')
cat > $fileName <<- _EOF_
#<-- html code goes here ------>
_EOF_
done #close the WHILE loop
