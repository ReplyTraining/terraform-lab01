resource "azurerm_resource_group" "resource_group" {
  name  = var.rg-name
  location = var.location
}

module "static-website" {
  source = "./modules/static-website"

  location = var.location
  rg-name = var.rg-name
  storage-account-name = var.storage-account-name
  index_document = var.index_document
  source_content = var.source_content
  # cdnprofile-name = var.cdnprofile-name
  # cdnprofile-sku = var.cdnprofile-sku
  # cdn-endpoint-name = var.cdn-endpoint-name

  depends_on = [azurerm_resource_group.resource_group]
}