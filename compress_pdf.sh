#!/bin/bash
# this is a simple script for pdf compression 

echo -e "Please enter the name of the PDF file that you want to compress."
read name
echo -e "Please enter the name of the compressed file."
read compressed
echo -e "Please enter the data quality. 1: good; 2: better 3: best (default)"
read quality
quality=${quality:-3} # define default
# https://www.digitalocean.com/community/tutorials/reduce-pdf-file-size-in-linux



if [ $quality = 1 ]; then
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$(pwd)/$compressed.pdf" "$(pwd)/$name.pdf"
elif [ $quality = 2 ]; then
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$(pwd)/$compressed.pdf" "$(pwd)/$name.pdf"
else
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$(pwd)/$compressed.pdf" "$(pwd)/$name.pdf"

echo "your file "$(pwd)/$compressed.pdf" has been created"
fi
