variable "location" {
  type        = string
  description = "Location resource group"
}

variable "rg_name" {
  type        = string
  description = "Name resource group"
}

variable "sa_name" {
  type        = string
  description = "Name storage account"
}

variable "source_content" {
  type        = string
  description = "Content of the index.html file"
}

variable "index_document" {
  type        = string
  description = "Name of the index.html file"
}