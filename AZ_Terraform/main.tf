module "rbac" {
  source = "git::https://github.com/Rezun79/tf_rbac_mod.git"
  rg_name = var.rg_name
  subscription_id = var.subscription_id
}

module "rg" {
  source = "./Modules/rg"
  rg_name = var.rg_name
}

module "kayvault" {
  source = "git::https://github.com/Rezun79/tf_keyvault_mod.git"
  key_vault_name = var.key_vault_name
  secret_name = var.secret_name
  key_vault_rg_name = var.key_vault_rg_name
}