#!/bin/bash
# this is a simple script for C++ folders

echo -e "Please enter a name for the project"
read name

g++ -g $(find . -type f -iregex ".*\.cpp") -o $name

echo "done"

