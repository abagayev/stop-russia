#!/bin/bash

# define file of resources
FILE="../resources.txt"

# remove trailing slashes and duplicates
TRIMMED=$(cat $FILE | sed 's/\/*$//g' | uniq)

# update resources
echo "$TRIMMED" > $FILE
