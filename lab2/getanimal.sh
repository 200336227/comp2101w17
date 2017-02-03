#!/bin/bash
# This script demonstrate using arrays and getting user input

colours=("red" "green" "blue" "orange")
declare -A animals
animals=([red]="cardinal" [green]="frog" [blue]="lobster" [orange]="Lord Dampnut")
numcolours=${#colours[@]}
read -p "Give me a number from 1 to $numcolours: " numrequested
num=$((numrequested-1))
colour=${colours[$num]}
animal=${animals[$colour]}
echo "Index $numrequested finds a $colour $animal"
