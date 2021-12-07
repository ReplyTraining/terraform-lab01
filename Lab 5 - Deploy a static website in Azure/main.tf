provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "resource_group" {
  name  = "rg-staticweb-demo"
  location = "eastus"
}

resource "azurerm_storage_account" "static-web-demo-storage" {
  name                = "staticwebsitedemo999"
  resource_group_name = azurerm_resource_group.resource_group.name
 
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
 
  static_website {
    index_document = "index.html"
  }
}
 
#Add index.html to blob storage
resource "azurerm_storage_blob" "static-web-demo-storage-blob" {
  name                   = "index.html"
  storage_account_name   = azurerm_storage_account.static-web-demo-storage.name
  storage_container_name = "$web"
  type                   = "Block"
  content_type           = "text/html"
  source_content         = "<h1>This is static content coming from the Terraform</h1>"
}