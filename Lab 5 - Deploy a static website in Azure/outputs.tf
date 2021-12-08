output "resource_group_name" {
  value = azurerm_resource_group.resource_group.name
  description = "Name of the resource group"
}

output "name" {
  value = module.static-website.name
  description = "Location/Endpoint of the storage blob"
}

output "static_website_url" {
  value = module.static-website.static_website_url
  description = "CDN Endpoint Url"
}