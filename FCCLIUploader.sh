#!/bin/bash
 #The $1 argument takes the container name, the $2 argument takes the file path to upload the file. And it stores the file path into a variable, we also capture the result of the command, and the exit status and place them into variables

 BlobUploadResult=$(az storage blob upload --container-name $1 --file $2 )
 ExitStatus=$?
echo "Uploading file to Azure..."
 # Lets us know if the file upload succeeded or not, and prints a blob list if it did succeed, if it didnt, we print the commands error, and let the user know to check for spelling errors.
if [ $ExitStatus -eq 0 ]; then
	echo "File exists, File Upload Sucessful! Here is your file in its container"
	az storage blob list --container-name $1 --output table
	
else
	echo "File Upload unsuccesful, check path or spelling errors"
	echo "$BlobUploadResult"
fi

:



