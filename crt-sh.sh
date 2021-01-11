#!/bin/sh
clear

echo "\n enter the domain name "
read domain

echo "finding from crt api \n "

curl  -s "https://crt.sh/?q=%25.$domain&output=json" >>  crt.json
cat crt.json | jq -r '.[] |  .name_value' | anew >> $domain.txt
