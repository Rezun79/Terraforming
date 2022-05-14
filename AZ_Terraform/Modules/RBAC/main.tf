data "azurerm_subscription" "devops" {
}

data "azuread_group" "aad_owner_group" {
  display_name = "aad_sbp_${var.rg_name}_owner"
  depends_on = [azuread_group.aad_owner_group]
}

data "azuread_group" "aad_contributor_group" {
  display_name = "aad_sbp_${var.rg_name}_contributor"
  depends_on = [azuread_group.aad_contributor_group]
}

data "azuread_group" "aad_reader_group" {
  display_name = "aad_sbp_${var.rg_name}_reader"
  depends_on = [azuread_group.aad_reader_group]
}


resource "azurerm_role_assignment" "rg_owner" {
  scope                = "/subscriptions/86b7ed7f-b575-4deb-a94f-6d26aa1e194f/resourceGroups/${var.rg_name}"
  role_definition_name = "Owner"
  principal_id         = data.azuread_group.aad_owner_group.id
  depends_on = [azurerm_resource_group.rg, azuread_group.aad_owner_group]
}

resource "azurerm_role_assignment" "rg_contributor" {
  scope                = "/subscriptions/86b7ed7f-b575-4deb-a94f-6d26aa1e194f/resourceGroups/${var.rg_name}"
  role_definition_name = "Contributor"
  principal_id         = data.azuread_group.aad_contributor_group.id
  depends_on = [azurerm_resource_group.rg, azuread_group.aad_contributor_group]
}

resource "azurerm_role_assignment" "rg_reader" {
  scope                = "/subscriptions/86b7ed7f-b575-4deb-a94f-6d26aa1e194f/resourceGroups/${var.rg_name}"
  role_definition_name = "Reader"
  principal_id         = data.azuread_group.aad_reader_group.id
  depends_on = [azurerm_resource_group.rg, azuread_group.aad_reader_group]
}