#!/bin/bash
#Define the installation of the tool to the /usr/local/bin dir. since its already in the $PATH, and its where binaries go.

InstallDir="/usr/local/bin"

#Store your shell script into a variable so we can install it
BinScript="FCCLIUploader.sh"

# Check if its already install, also to prevent installing it multiple times
if [ ! -f "$InstallDir/$BinScript" ]; then
	echo "The script is already installed"
	exit 1
fi

#Copy the script to the dir

cp $BinScript $InstallDir

#Add proper permissions so it can be executed

chmod 777 "$InstallDir/$BinScript"

# Make sure the directory is in the users $PATH env variable

if [[ ":PATH" == *":$InstallDir"* ]]; then
	echo "Installation sucess. You can use '$BinScript' from any directory"
else "Installation success, bu the '$InstallDir' is not in your PATH variable"
fi 
