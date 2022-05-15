module "aad_groups" {
  source = "./Modules/AAD_Groups"
  rg_name = var.rg_name
}

module "rbac" {
  source = "./Modules/RBAC"
  rg_name = var.rg_name
}

module "rg" {
  source = "./Modules/rg"
  rg_name = var.rg_name
}