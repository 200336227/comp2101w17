#!/bin/bash
# Create an array containing 11 different food names.
# Create two variables with random numbers in the from 1-6 each
# Add the two numbers together and use the sume as an index to display a food from your array

# Create a array of foods
foods=(apple banana pizza wings beer steak sandwich "pop tart" chicken ribs dirt)

# Roll 2 standard 6-sided dice
dice1=$(($RANDOM %6))
dice2=$(($RANDOM %6))

# the food index is 0-10
foodindex=$((dice1 + dice2))

# For dicetotal, have to add 2 because the remainders are in the range of 0-5 and dice go 1-6
dicetotal=$((dice1 + dice2 + 2))

# Look up the data first to make the output command more readable
food=${foods[$foodindex]}

# Everything done, produce output
echo "Yum, I rolled $dicetotal which gives me $food!"

