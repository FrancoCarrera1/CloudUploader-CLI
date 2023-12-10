# CloudUploader-CLI
This is a bash based CLI tool that allows users to upload files to a specified cloud storage solution. all credit goes to Madebygps a.k.a Gwyneth Peña-Siguenza for the inspiration of this project. For all intensive purposes, this overview will only be done using Azure Blob storage, and I will not make use of any other cloud providers services for now.

# Pre-requisites and Installation
Before we begin there is a couple of things we will need.
1. Depending on your operating system we will need the Azure CLI, thankfully Microsoft has made some documentation about the subject [here.](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
2. I imagine most of you are running Windows 10/11, if thats you before doing the above install WSL (Windows Subsystem for Linux) using [this link](https://learn.microsoft.com/en-us/windows/wsl/install) as you embark on this journey you will find it very useful for learning Linux.
3. Creating an Azure subscription [here](https://azure.microsoft.com/en-us/free/search/?ef_id=_k_CjwKCAiAvdCrBhBREiwAX6-6Un9y87OfbaiTJZ-agWWiht9O458eQ-9S-fGJZnaPy83eeCWhMP3x-RoCn5sQAvD_BwE_k_&OCID=AIDcmm5edswduu_SEM__k_CjwKCAiAvdCrBhBREiwAX6-6Un9y87OfbaiTJZ-agWWiht9O458eQ-9S-fGJZnaPy83eeCWhMP3x-RoCn5sQAvD_BwE_k_&gad_source=1&gclid=CjwKCAiAvdCrBhBREiwAX6-6Un9y87OfbaiTJZ-agWWiht9O458eQ-9S-fGJZnaPy83eeCWhMP3x-RoCn5sQAvD_BwE), if this is your first time you can create a free acount with $200 in credits.

# Setup
1. First we must create an Azure Blob Storage Account, we can do that from the homepage of our Azure, by clicking on the side Menu button, and then going to "Storage Accounts"
 <img src="https://github.com/FrancoCarrera1/CloudUploader-CLI/blob/main/images/azure_menu.png" height="80%" width="80%" alt="azuremenu"/>
 Once there hit "Create" in the top right. You will be taken to the create a storage account wizard, create a resource group if you dont have one, name your storage account, pick a region that is close to you. And for redundancy since we dont plan on breaking the bank, set it to LRS (Locally redundant storage)
<img src="https://github.com/FrancoCarrera1/CloudUploader-CLI/blob/main/images/csawiz.png" height="80%" width="80%" alt="create a storage account menu"/>
Once done hit next and for the rest of the options I would just leave as is. Then it will validate your configuration and hit "Create" in the bottom left.

 Now you will be in re-directed to your storage accounts Overview, in the side menu we want to go to the "Storage Browser to create the Folder where we will upload the files.
 
 <img src="https://github.com/FrancoCarrera1/CloudUploader-CLI/blob/main/images/csaoverview.png" height="33%" width="33%" alt="create a storage account folder"/>



