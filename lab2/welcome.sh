#!/bin/bash
# This script print out a welcome message
# IT demonstrates using variables

export MYNAME="Kien Vinh Tran"
mytitle="Chief Executive Operator"
myhostname=`hostname`
dayoftheweek=$(date +%A)

echo "Welcome to planet $myhostname, $mytitle $MYNAME!"
echo "Today is $dayoftheweek."
echo


