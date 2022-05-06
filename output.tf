output "rg_name" {
  value       = azurerm_resource_group.rg.name
  description = "Azure Resource Group"
}

output "rg_location" {
  value       = azurerm_resource_group.rg.location
  description = "Azure Region"
}