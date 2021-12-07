provider "azurerm" {
  features {}
}
variable "location" {
  description = "The Azure Region in which all resources groups should be created."
}

resource "azurerm_resource_group" "resource_group" {
  name  = "dojodemo-YOURNAMEHERE-rg"             #edit resourcegroup with your name 
  location = var.location
}
 

