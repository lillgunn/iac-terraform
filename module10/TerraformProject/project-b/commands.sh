terraform state rm module.storage.azurerm_storage_account.sa-demo 

az resource move --destination-group rg-demo-project-b \
  --ids /subscriptions/efc1e7b1-5729-4eea-b33e-12cc6b1c0183/resourceGroups/rg-demo-project-a/providers/Microsoft.Storage/storageAccounts/sademolillov10



# List resources of a specific type
az resource list --resource-type "Microsoft.Storage/storageAccounts" --output table

# Get the id of a specific resource
az resource show --resource-group rg-demo-project-b --name sademolillov10 --resource-type "Microsoft.Storage/storageAccounts" --query id --output tsv


# List tfstate file located in storae account
az storage blob list --account-name sabetflil2ax12vxblqc --container-name lilltfstate --output table

# Create a json file with the current state file
az storage blob download --account-name sabetflil2ax12vxblqc --container-name lilltfstate --name project_a.tfstate --file project_a.tfstate
az storage blob download --account-name sabetflil2ax12vxblqc --container-name lilltfstate --name project_b.tfstate --file project_b.tfstate

# Delete tfstate file from storage account
az storage blob delete --account-name sabetflil2ax12vxblqc --container-name lilltfstate --name project_a.tfstate
az storage blob delete --account-name sabetflil2ax12vxblqc --container-name lilltfstate --name project_b.tfstate
