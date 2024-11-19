# Variables for the main configuration
variable "resource_group_name" {
  type        = string
  default     = "rg-demo-project-b"
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  default     = "westeurope"
  description = "The location of the storage account"
}

# Variables for the storage account
variable "storage_account_name" {
  type        = string
  default     = "sademolillov10" # MUST BE UNIQUE, CHANGE THIS VALUE
  description = "The name of the storage account"
}