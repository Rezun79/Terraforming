data "azurerm_subscription" "rezcorp" {
}

data "azuread_group" "aad_owner_group" {
  display_name = "aad_sbp_${local.rg_name}_owner"
  # depends_on = [module.AAD_Groups.azuread_group.aad_owner_group]
}

data "azuread_group" "aad_contributor_group" {
  display_name = "aad_sbp_${local.rg_name}_contributor"
  # depends_on = [module.AAD_Groups.azuread_group.aad_contributor_group]
}

data "azuread_group" "aad_reader_group" {
  display_name = "aad_sbp_${local.rg_name}_reader"
  # depends_on = [module.AAD_Groups.azuread_group.aad_reader_group]
}


resource "azurerm_role_assignment" "rg_owner" {
  scope                = "/subscriptions/653f9b86-b9d4-4959-abfd-f8a6a6bf9937/resourceGroups/${local.rg_name}"
  role_definition_name = "Owner"
  principal_id         = data.azuread_group.aad_owner_group.id
  depends_on = [azurerm_resource_group.rg1, module.AAD_Groups.azuread_group.aad_owner_group]
}

resource "azurerm_role_assignment" "rg_contributor" {
  scope                = "/subscriptions/653f9b86-b9d4-4959-abfd-f8a6a6bf9937/resourceGroups/${var.rg_name}"
  role_definition_name = "Contributor"
  principal_id         = data.azuread_group.aad_contributor_group.id
  depends_on = [azurerm_resource_group.rg1, module.AAD_Groups.azuread_group.aad_contributor_group]
}

resource "azurerm_role_assignment" "rg_reader" {
  scope                = "/subscriptions/653f9b86-b9d4-4959-abfd-f8a6a6bf9937/resourceGroups/${var.rg_name}"
  role_definition_name = "Reader"
  principal_id         = data.azuread_group.aad_reader_group.id
  depends_on = [azurerm_resource_group.rg, module.AAD_Groups.azuread_group.aad_reader_group]
}