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