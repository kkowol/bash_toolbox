#!/bin/bash
# this is a simple script for making a virtual environment 

echo -e "please insert the name for your virtual environment"
read name
python3 -m venv ~/.virtualenvs/$name
echo "your virtual environment named $name has been created"

source ~/.virtualenvs/$name/bin/activate
pip install --upgrade pip

