#!/bin bash

#This script will list all the setuid and setgid regular files in the /usr directory tree

echo "This is the list display all the setuid "
find /usr -type f -executable -perm -4000 -ls
echo "------------"

echo
echo
echo "This is the list display all the setgid"
find /usr -type f -executable -perm -2000 -ls
echo "------------"


