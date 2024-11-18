  terraform {
    backend "azurerm" {
        resource_group_name  = "rg-backend-tfstate-lill2"
        storage_account_name = "sabetflil2ax12vxblqc"
        container_name       = "sctfbackendlill2"
        key                  = "project_ab.tfstate"
    }
}