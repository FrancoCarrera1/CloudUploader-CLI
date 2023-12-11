# CloudUploader-CLI
This is a bash based CLI tool that allows users to upload files to a specified cloud storage solution. all credit goes to Madebygps a.k.a Gwyneth Peña-Siguenza for the inspiration of this project. For all intensive purposes, this overview will only be done using Azure Blob storage, and I will not make use of any other cloud providers services for now.

# Pre-requisites and Installation
Before we begin there is a couple of things we will need.
1. Depending on your operating system we will need the Azure CLI, thankfully Microsoft has made some documentation about the subject [here.](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
2. I imagine most of you are running Windows 10/11, if thats you before doing the above install WSL (Windows Subsystem for Linux) using [this link](https://learn.microsoft.com/en-us/windows/wsl/install) as you embark on this journey you will find it very useful for learning Linux.
3. Creating an Azure subscription [here](https://azure.microsoft.com/en-us/free/search/?ef_id=_k_CjwKCAiAvdCrBhBREiwAX6-6Un9y87OfbaiTJZ-agWWiht9O458eQ-9S-fGJZnaPy83eeCWhMP3x-RoCn5sQAvD_BwE_k_&OCID=AIDcmm5edswduu_SEM__k_CjwKCAiAvdCrBhBREiwAX6-6Un9y87OfbaiTJZ-agWWiht9O458eQ-9S-fGJZnaPy83eeCWhMP3x-RoCn5sQAvD_BwE_k_&gad_source=1&gclid=CjwKCAiAvdCrBhBREiwAX6-6Un9y87OfbaiTJZ-agWWiht9O458eQ-9S-fGJZnaPy83eeCWhMP3x-RoCn5sQAvD_BwE), if this is your first time you can create a free acount with $200 in credits.
   

# Creating our Container and getting the environment ready for the tool.
1. Once we have installed the Azure CLI, we are gonna use the <b>az login</b> command to authenticate to our cloud. This is so we can create a storage account. Once logged in we are going to create a resource group, I used Alpha as the name for mine but you can name yours whatever you would like.
<img src="https://github.com/FrancoCarrera1/CloudUploader-CLI/blob/main/images/creatergcmd.png" width="80%" height="80%" alt="resource group creating command"/>

Once that is done we will now create the storage account that will hold our LRS (Locally Redundant Storage) Blob. We do this using the command.
```bash 
   az storage account create --name (storage-account-name-here) --resource-group (resource-group-name-here) --location eastus --sku Standard_LRS --kind StorageV2 --allow-blob-public-access false
   ```
And to create the container where we can upload our blobs(files):
```bash
az storage container create --name (container-name-here) --account-name (storage-account) --auth-mode login
```
2. In order to test our script, we must first set our environment variables in our BASH terminal, this is so that we can authorize acess to Blob storage from the Azure CLI. We could do it with the parameters account-name and account-key, but for more convenience we will set the env. variables AZURE_STORAGE_ACCOUNT and AZURE_STORAGE_KEY. So that everytime we run an az storage command, we dont have to provide this information every single time. But first, you need to know what your key is, the command to display your keys is as follows:
```bash
az storage account keys list --account-name (acc-name-here) --resource-group (resource-group-name-here) --output Table
```
This will list our account keys, which we will then use to now set both of our enviroment variables using the "export" command in bash:
```bash
export AZURE_STORAGE_ACCOUNT="acc name here" ; export AZURE_STORAGE_KEY="key goes here"
```
After that is done use the echo command to make sure that the information stored in these environment variables is accurate as it can cause issues down the road. An example would be 
```bash
echo $AZURE_STORAGE_ACCOUNT
```
And finally we wanna test what we have just done to make sure that we can upload to our container  we will do this using:
```bash
az storage blob upload --container-name upload-here --file file.txt
```
You might get different error messages here, some things I would do to troubleshoot are:
<ul>
<li>Make sure you are logged in using "az login"</li>
<li>Make sure the data in the environment variables is accurate since it is case sensitive to what you have set your storage account name, and your key that we got earlier</li>
<li>Make sure that when you use the command, the name of your container and the file you are uploading, and any syntax is accurate (check for spelling errors)</li>
</ul>

Now that is enough information to get the users environment and cloud storage setup for the tool, I wont get into how to create the tool, I believe this should be done of ones own accord to gain some experience scripting. In the following I will demonstrate how to download, install, and use the tool to upload files to the container & blobs we just created.

# Tool Download and Installation
1.Clone the Repo using: 
```bash
git clone https://github.com/FrancoCarrera1/CloudUploader-CLI.git
```
2.Change directory to where the tool is using:
```bash
cd CloudUploader-CLI
```
3.Give yourself permission over the FCCLIUploader.sh script, and you can now use it, I am still working on an installation script that will add it to your $PATH so that you can use it from any directory, and I hope to get it to upload multiple files, and add more functionality so that you can overwrite already existing files in the container from the CLI.
```bash
chmod 777 FCCLIUploader.sh
```
# Example use of the tool
lets say you have a file called "file.txt" in the /home/user/Documents directory(you can use pwd to find this out), you would use the tool as follows.
```bash
./FCCLIUploader.sh (container-name-here) /home/user/Documents/file.txt
```

# Final Thoughts
There is still a lot to be improved about the script, more functionality could be added like multiple file uploads, overwriting existing files, and encryption for security. Feel free to collaborate with me on this project, you can HMU on any social medias, submit a pull request or issue.


