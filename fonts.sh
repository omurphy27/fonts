#!/bin/bash

echo "================================================================="
echo "Google Fonts Quick Extractor"
echo "================================================================="

read -p "Enter a directory name for all fonts to be extracted to: " userdir

if [ ! -n "$userdir" ]; then
	echo "No directory entered. Please run the script again."
elif [ -d $userdir ]; then
	echo "This directory already exists." 
	echo "Please select a different directory and run the script again."
else
	# cache working directory of current .sh file
	DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

	# create directory
	mkdir $userdir

	# copy .ttf font files into newly made directory
	find $DIR -name "*.ttf" -type f -exec cp {} ./$userdir \;

	echo "Font files successfully copied over into the new "$userdir" directory"
fi
