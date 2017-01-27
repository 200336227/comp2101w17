#!/bin/bash

# helloscript.sh

# This script displays the string "Hello World!"

# This is a silly way of creating the output text by standing with something else and stream editting it in a pipeline 

#start with echoing a string similar to the output we want
# then used sed to change the all the b to an o, the l to a  , and the ol  to an orl
# then use tr to translate lower case ha to a capital and again to change w to upper-case
# last, use awk to fix the space in the middle and add !, using ascii codes

echo -n "helb wold" |
	sed -e "s/b/o/g" -e "s/l/ll/" -e "s/ol/orl/" |
	tr "h" "H"|
	tr "w" "W"|
	awk '{print $1 "\x20" $2 "\41"}'
