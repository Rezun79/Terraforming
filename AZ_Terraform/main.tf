module "rbac" {
  source = "git::https://github.com/Rezun79/tf_rbac_mod.git"
  rg_name = var.rg_name
  subscription_id = var.subscription_id
}

module "rg" {
  source = "./Modules/rg"
  rg_name = var.rg_name
}