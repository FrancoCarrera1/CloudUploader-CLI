# CloudUploader-CLI
This is a bash based CLI tool that allows users to upload files to a specified cloud storage solution. all credit goes to Madebygps a.k.a Gwyneth Peña-Siguenza for the inspiration of this project. For all intensive purposes, this overview will only be done using Azure Blob storage, and I will not make use of any other cloud providers services for now.

# Pre-requisites and Installation
Before we begin there is a couple of things we will need.
1. Depending on your operating system we will need the Azure CLI, thankfully Microsoft has made some documentation about the subject [here.](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
2. I imagine most of you are running Windows 10/11, if thats you before doing the above install WSL (Windows Subsystem for Linux) using [this link](https://learn.microsoft.com/en-us/windows/wsl/install) as you embark on this journey you will find it very useful for learning Linux.
3. Creating an Azure subscription [here](https://azure.microsoft.com/en-us/free/search/?ef_id=_k_CjwKCAiAvdCrBhBREiwAX6-6Un9y87OfbaiTJZ-agWWiht9O458eQ-9S-fGJZnaPy83eeCWhMP3x-RoCn5sQAvD_BwE_k_&OCID=AIDcmm5edswduu_SEM__k_CjwKCAiAvdCrBhBREiwAX6-6Un9y87OfbaiTJZ-agWWiht9O458eQ-9S-fGJZnaPy83eeCWhMP3x-RoCn5sQAvD_BwE_k_&gad_source=1&gclid=CjwKCAiAvdCrBhBREiwAX6-6Un9y87OfbaiTJZ-agWWiht9O458eQ-9S-fGJZnaPy83eeCWhMP3x-RoCn5sQAvD_BwE), if this is your first time you can create a free acount with $200 in credits.

# Setup
1. Once we have intstalled the Azure CLI, we are gonna use the <b>az login<b> command to authenticate to our cloud. This is so we can create a storage account. Once logged in we are going to create a resource group, I used Alpha as the name for mine but you can name yours whatever you would like.
<img src="https://github.com/FrancoCarrera1/CloudUploader-CLI/blob/main/images/creatergcmd.png" width="80%" height="80%" alt="resource group creating command"/>

Once that is done we will now create the storage account that will have our LRS (Locally Redundant Storage) Blob where we can upload the files to.

<img src="https://github.com/FrancoCarrera1/CloudUploader-CLI/blob/main/images/createsacmd.png" width="120%" height="120%" alt="storage account creation cmd"/>




