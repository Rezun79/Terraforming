module "rbac" {
  source = "git::https://github.com/Rezun79/tf_mod_rbac.git"
  rg_name = var.rg_name
  subscription_id = var.subscription_id
}

module "rg" {
  source = "git::https://github.com/Rezun79/tf_mod_rg.git"
  rg_name = var.rg_name
}

module "kayvault" {
  source = "git::https://github.com/Rezun79/tf_mod_keyvault.git"
  key_vault_name = var.key_vault_name
  secret_name = var.secret_name
  key_vault_rg_name = var.key_vault_rg_name
}