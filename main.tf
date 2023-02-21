resource "random_string" "name_suffix" {
  length           = 5  
  special          = false
  lower            = true
}

resource "random_string" "simple_password" {
  length           = 12  
  special          = false
  lower            = true
}

resource "azurerm_resource_group" "rg" {
  name     = local.rg_name
  location = var.region
}


resource "azuread_user" "user" {
  user_principal_name = local.user_principal_name
  display_name        = local.mail_nickname
  mail_nickname       = local.mail_nickname
  password            = random_string.simple_password.result
}

resource "azurerm_role_assignment" "rg_iam" {
  scope                = azurerm_resource_group.rg.id
  role_definition_name = "Contributor"
  principal_id         = azuread_user.user.object_id
}