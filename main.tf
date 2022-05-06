resource "random_string" "name_suffix" {
  length           = 5  
  special          = false
  lower            = true
}

resource "azurerm_resource_group" "rg" {
  name     = local.rg_name
  location = var.region
}