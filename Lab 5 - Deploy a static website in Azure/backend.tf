terraform {
  backend "azurerm" {
    resource_group_name   = "staticwebdemo"
    storage_account_name  = "staticwebdemo1626"
    container_name        = "staticwebdemo"
    key                   = "terraform.tfstate"
  }
}