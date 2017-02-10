#!/bin/bash
# This script auto-updates a git repository and expects the commit comment on the command line

git add -A
git commit -m "$1"
git push
