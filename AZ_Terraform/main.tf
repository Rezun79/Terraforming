module "rbac" {
  source = "./Modules/RBAC"
  rg_name = var.rg_name
  subscription_id = var.subscription_id
}

module "rg" {
  source = "./Modules/rg"
  rg_name = var.rg_name
}