resource "azurerm_resource_group" "resource_group" {
  name  = var.rg-name
  location = var.location
}

resource "azurerm_storage_account" "static-web-demo-storage" {
  name                = var.storage-account-name
  resource_group_name = azurerm_resource_group.resource_group.name
 
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  account_kind             = var.account_kind
 
  static_website {
    index_document = var.index_document
  }
}
 
#Add index.html to blob storage
resource "azurerm_storage_blob" "static-web-demo-storage-blob" {
  name                   = var.index_document
  storage_account_name   = azurerm_storage_account.static-web-demo-storage.name
  storage_container_name = "$web"
  type                   = "Block"
  content_type           = "text/html"
  source_content         = var.source_content
}