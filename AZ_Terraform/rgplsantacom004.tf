module "rbac_rgplsantacom004" {
  source = "git::https://github.com/Rezun79/tf_mod_rbac.git"
  #source = "../../tf_mod_rbac/"
  #rg_name = var.rg_name
  rg_name = "rgplsantacom004"
  subscription_id = var.subscription_id
  spn_object_id = module.spn_rgplsantacom004.spn_object_id
  depends_on = [
    module.rg_rgplsantacom004,
    module.spn_rgplsantacom004
  ]
}

module "rg_rgplsantacom004" {
  source = "git::https://github.com/Rezun79/tf_mod_rg.git"
  #source = "../../tf_mod_rg/"
  #rg_name = var.rg_name
  rg_name = "rgplsantacom004"
}

module "kayvault_rgplsantacom004" {
  source = "git::https://github.com/Rezun79/tf_mod_keyvault.git"
  #source = "../../tf_mod_keyvault/"
  #rg_name = var.rg_name
  rg_name = "rgplsantacom004"
  root_spn_client_id = var.client_id
  spn_client_id = module.spn_rgplsantacom004.spn_client_id
  spn_object_id = module.spn_rgplsantacom004.spn_object_id
  secret = module.spn_rgplsantacom004.secret
  tenant_id = var.tenant_id
  platform_rg = var.platform_rg
  platform_keyvault = var.platform_keyvault
  # key_vault_name = var.key_vault_name
  # secret_name = var.secret_name
  # key_vault_rg_name = var.key_vault_rg_name
  depends_on = [
    module.rg_rgplsantacom004,
    module.spn_rgplsantacom004
  ]
}

module "spn_rgplsantacom004" {
  source = "git::https://github.com/Rezun79/tf_mod_spn.git"
  #source = "../../tf_mod_spn/"
  #rg_name = var.rg_name
  rg_name = "rgplsantacom004"
  # key_vault_name = var.key_vault_name
  # key_vault_rg_name = var.key_vault_rg_name
}