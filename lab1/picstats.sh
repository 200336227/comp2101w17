#!/bin/bash
# Display regular files in the Pictures directory and size

du -ah ~/Pictures


#Display 3 largest files in the Pictures directory


du -a -h ~/Pictures | sort -n  -r | head -n 3

