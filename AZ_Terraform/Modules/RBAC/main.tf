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

resource "azuread_group" "aad_network_contributor_group" {
  display_name     = "aad_sbp_${local.rg_name}_network_contributor"
  description = "Managed by IDM;Network_contributor permission to ${local.rg_name}"
  security_enabled = true
}

resource "azuread_group" "aad_network_dnsone_operator_group" {
  display_name     = "aad_sbp_${local.rg_name}_network_dnsone_operator"
  description = "Managed by IDM;Network_contributor permission to ${local.rg_name}"
  security_enabled = true
}


resource "azurerm_role_assignment" "rg_owner" {
  scope                = "/subscriptions/${local.subscription_id}/resourceGroups/${local.rg_name}"
  role_definition_name = "Owner"
  principal_id         = azuread_group.aad_owner_group.id
}

resource "azurerm_role_assignment" "rg_contributor" {
  scope                = "/subscriptions/${local.subscription_id}/resourceGroups/${var.rg_name}"
  role_definition_name = "Contributor"
  principal_id         = azuread_group.aad_contributor_group.id
}

resource "azurerm_role_assignment" "rg_reader" {
  scope                = "/subscriptions/${local.subscription_id}/resourceGroups/${var.rg_name}"
  role_definition_name = "Reader"
  principal_id         = azuread_group.aad_reader_group.id
}

resource "azurerm_role_assignment" "network_contributor" {
  scope                = "/subscriptions/${local.subscription_id}/resourceGroups/${var.rg_name}"
  role_definition_name = "Network Contributor"
  principal_id         = azuread_group.aad_network_contributor_group.id
}


resource "azurerm_role_assignment" "network_dnszone_operator" {
  scope                = "/subscriptions/${local.subscription_id}/resourceGroups/${var.rg_name}"
  role_definition_name = "Network DNSZone Operator"
  principal_id         = azuread_group.aad_network_dnsone_operator_group.id
  depends_on = [azurerm_role_definition.network_dnszone_operator]
}