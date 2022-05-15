resource "azuread_group" "aad_owner_group" {
  display_name     = "aad_sbp_${local.rg_name}_owner"
  description = "Managed by IDM;Owner permission to ${local.rg_name}"
  security_enabled = true
}

resource "azuread_group" "aad_contributor_group" {
  display_name     = "aad_sbp_${local.rg_name}_contributor"
  description = "Managed by IDM;Contributor permission to ${local.rg_name}"
  security_enabled = true
}

resource "azuread_group" "aad_reader_group" {
  display_name     = "aad_sbp_${local.rg_name}_reader"
  description = "Managed by IDM;Reader permission to ${local.rg_name}"
  security_enabled = true
}

# data "azuread_group" "aad_owner_group" {
#   display_name = "aad_sbp_${local.rg_name}_owner"
#   #depends_on = [module.aad_groups.aad_owner_group]
# }

# data "azuread_group" "aad_contributor_group" {
#   display_name = "aad_sbp_${local.rg_name}_contributor"
#   #depends_on = [module.aad_groups.aad_contributor_group]
# }

# data "azuread_group" "aad_reader_group" {
#   display_name = "aad_sbp_${local.rg_name}_reader"
#   #depends_on = [module.aad_groups.aad_reader_group]
# }


resource "azurerm_role_assignment" "rg_owner" {
  scope                = "/subscriptions/653f9b86-b9d4-4959-abfd-f8a6a6bf9937/resourceGroups/${local.rg_name}"
  role_definition_name = "Owner"
  principal_id         = azuread_group.aad_owner_group.id
  #depends_on = [module.rg.rg1t, module.aad_groups.aad_owner_group]
}

resource "azurerm_role_assignment" "rg_contributor" {
  scope                = "/subscriptions/653f9b86-b9d4-4959-abfd-f8a6a6bf9937/resourceGroups/${var.rg_name}"
  role_definition_name = "Contributor"
  principal_id         = azuread_group.aad_contributor_group.id
  #depends_on = [module.rg.rg1t, module.aad_groups.aad_contributor_group]
}

resource "azurerm_role_assignment" "rg_reader" {
  scope                = "/subscriptions/653f9b86-b9d4-4959-abfd-f8a6a6bf9937/resourceGroups/${var.rg_name}"
  role_definition_name = "Reader"
  principal_id         = azuread_group.aad_reader_group.id
  #depends_on = [module.rg.rg1t, module.aad_groups.aad_reader_group]
}