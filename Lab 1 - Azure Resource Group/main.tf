provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "resource_group" {
  name  = "rg-demo" ###### Please Rename you resource group to your dojo-[YOURNAME]-rg 
  location = "eastus" #####change to a more approprite local
}