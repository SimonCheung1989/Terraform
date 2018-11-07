variable "location" {
  default = "eastasia"
}

variable "env" {
  default = "testing"
}

variable "azurerm_resource_group_name" {
  default = "rg_20181001"
}

variable "azurerm_storage_account_name" {
  default = "sa20181001"
}

variable "azurerm_storage_container_name" {
  default = "sc20181001"
}

variable "azurerm_storage_blob_name" {
  default = "sb20181001"
}

variable "prefix" {
  default = "vm-20181001"
}

variable "address_space" {
  default = "10.0.0.0/16"
}

variable "subnet1_address_space" {
  default = "10.0.1.0/24"
}
