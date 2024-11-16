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
    key                  = "ov08.terraform.lill2tfstate"
  }
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}