#!/bin/bash
# Display regular files in the Pictures directory and size

echo -n "In the ~/Pictures directory, the number is file is "
find ~/Pictures -type f |wc -l 

echo "--------------"
echo 
echo -n "Diskspace using  in the Pictures directory are "
du -h ~/Pictures | awk '{print $1}'
echo "--------------"
echo

#Display 3 largest files in the Pictures directory
echo "Three largest files in the ~/Pictures directory: "

du -a -h ~/Pictures/* | sort -n  -r | head -n 3


