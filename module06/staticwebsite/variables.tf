variable "location" {
  description = "Location of the resources"
  type        = string
  default     = "westeurope"
}

variable "rg_name" {
  description = "Name of Resource Group"
  type        = string
  default     = "rg-weblill"
}

variable "sa_name" {
  description = "Nname of the Storage Account."
  type        = string
  default     = "saweblill"  
}
variable "source_content" {
  description = "The content of the index.html file."
  type        = string
  default     = "<h1>Web page created by Terraform Lill</h1>"
}

variable "index_document" {
  description = "Name of the index document."
  type        = string
  default     = "index.html"
}