variable "rg_backend_name" {
  description = "Name resource group"
  type        = string
}

variable "rg_backend_location" {
  description = "Location resource group"
  type        = string
}

variable "sa_backend_name" {
  description = "Name storage account"
  type        = string
}

variable "sc_backend_name" {
  description = "Name storage container"
  type        = string 
}

variable "kv_backend_name" {
  description = "Name key vault"
  type        = string
}

variable "sa_backende_accesskey_name" {
  description = "Name key vault secret"
  type        = string
}