# List resources containing a specific string in the name
az resource list --query "[?contains(name, 'sa')]" --output table

# List resources of a specific type
az resource list --resource-type "Microsoft.Storage/storageAccounts" --output table

# Get the id of a specific resource
az resource show --resource-group rg-demo-project-a --name sademolillov10 --resource-type "Microsoft.Storage/storageAccounts" --query id --output tsv

# Creates a json file with the list of resources
az resource list --resource-group rg-demo-project-a --output json > resources.json


# Remove a resource from terraform state
terraform state rm module.storage.azurerm_storage_account.sa-demo 

# Move a resource to another resource group
az resource move --destination-group rg-demo-project-b \
  --ids /subscriptions/efc1e7b1-5729-4eea-b33e-12cc6b1c0183/resourceGroups/rg-demo-project-a/providers/Microsoft.Storage/storageAccounts/sademolillov10