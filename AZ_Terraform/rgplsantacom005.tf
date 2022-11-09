module "rbac_rgplsantacom005" {
  source = "git::https://github.com/Rezun79/tf_mod_rbac.git"
  #source = "../../tf_mod_rbac/"
  #rg_name = var.rg_name
  rg_name = "rgplsantacom005"
  subscription_id = var.subscription_id
  spn_object_id = module.spn_rgplsantacom005.spn_object_id
  depends_on = [
    module.rg_rgplsantacom005,
    module.spn_rgplsantacom005
  ]
}

module "rg_rgplsantacom005" {
  source = "git::https://github.com/Rezun79/tf_mod_rg.git"
  #source = "../../tf_mod_rg/"
  #rg_name = var.rg_name
  rg_name = "rgplsantacom005"
}

module "kayvault_rgplsantacom005" {
  source = "git::https://github.com/Rezun79/tf_mod_keyvault.git"
  #source = "../../tf_mod_keyvault/"
  #rg_name = var.rg_name
  rg_name = "rgplsantacom005"
  root_spn_client_id = var.client_id
  spn_client_id = module.spn_rgplsantacom005.spn_client_id
  spn_object_id = module.spn_rgplsantacom005.spn_object_id
  secret = module.spn_rgplsantacom005.secret
  tenant_id = var.tenant_id
  platform_rg = var.platform_rg
  platform_keyvault = var.platform_keyvault
  # key_vault_name = var.key_vault_name
  # secret_name = var.secret_name
  # key_vault_rg_name = var.key_vault_rg_name
  depends_on = [
    module.rg_rgplsantacom005,
    module.spn_rgplsantacom005
  ]
}

module "spn_rgplsantacom005" {
  source = "git::https://github.com/Rezun79/tf_mod_spn.git"
  #source = "../../tf_mod_spn/"
  #rg_name = var.rg_name
  rg_name = "rgplsantacom005"
  # key_vault_name = var.key_vault_name
  # key_vault_rg_name = var.key_vault_rg_name
}

module "github_rgplsantacom005" {
  source = "git::https://github.com/Rezun79/tf_mod_gh.git"
  rg_name = "rgplsantacom005"
  github_token = var.github_token
  github_organization = var.github_organization
}

module "tfc_rgplsantacom005" {
  source = "git::https://github.com/Rezun79/tf_mod_tfc.git"
  rg_name = "rgplsantacom005"
  tfc_organization_name = var.tfc_organization_name
  github_organization = var.github_organization
  tfc_github_oauth_token_id = var.tfc_github_oauth_token_id
  spn_client_id = module.spn_rgplsantacom005.spn_client_id
  secret = module.spn_rgplsantacom005.secret
  depends_on = [
    module.spn_rgplsantacom005,
    module.github_rgplsantacom005
  ]
}

