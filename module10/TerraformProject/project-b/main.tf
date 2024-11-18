terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-backend-tfstate-lill2"
    storage_account_name = "sabetflil2ax12vxblqc"
    container_name       = "sctfbackendlill2"
    key                  = "project_b.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "efc1e7b1-5729-4eea-b33e-12cc6b1c0183"
  features {

  }
}
resource "azurerm_resource_group" "rg_b" {
  name     = var.resource_group_name
  location = var.location
}