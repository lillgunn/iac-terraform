locals {
  workspaces_suffix = terraform.workspace == "default" ? "" : "${terraform.workspace}"

  rg_name = terraform.workspace == "default" ? "${var.rg_name}" : "${var.rg_name}-${local.workspaces_suffix}"
  sa_name = terraform.workspace == "default" ? "${var.sa_name}" : "${var.sa_name}${local.workspaces_suffix}"
  web_suffix = "<h1>${terraform.workspace}${local.web_suffix}</h1>"
}

resource "random_string" "random_string" {
  length = 4
    special = false
    upper = false
}
#create resource group
resource "azurerm_resource_group" "rg_web" {
  name     = local.rg_name
  location = var.location
}

resource "azurerm_storage_account" "sa_web" {
  name                     = "${lower(var.sa_name)}${random_string.random_string.result}"
  resource_group_name      = azurerm_resource_group.rg_web.name
  location                 = azurerm_resource_group.rg_web.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  static_website {
    index_document = var.index_document
  }
}

# add index.html file to the storage account
resource "azurerm_storage_blob" "index_html" {
  name                      = var.index_document
  storage_account_name      = azurerm_storage_account.sa_web.name
  storage_container_name    = "$web"
  type                      = "Block"
  content_type              = "text/html"
  source_content            = "${var.source_content}${local.web_suffix}"
  
}

output "primary_web_endpoint" {
     value = azurerm_storage_account.sa_web.primary_web_endpoint
}