# Get resource group name
read -p "resource-group name: " resourceGroupName

#  Get VM name
read -p "VM name: " vmName

#  Get username for operating system
read -p "username: " username

# Create resource group
az group create --name $resourceGroupName --location eastus

az vm create \
  --resource-group $resourceGroupName \
  --name $vmName \
  --image UbuntuLTS \
  --admin-username $username \
  --ssh-key-values ~/.ssh/id_rsa.pub

