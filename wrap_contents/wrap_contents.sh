#!/usr/bin/env bash
#A Script to combine 3 files

#Variables
ToWrap=$1
Specify=$2
Result=$3

#MAIN
cat "$Specify"_header.html "$ToWrap" "$Specify"_footer.html > "$Result"
#To my understanding cat is combbining the files in the order that they are placed in a specific file
