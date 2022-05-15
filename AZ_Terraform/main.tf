module "aad_groups" {
  source = "./Modules/AAD_Groups"
  rg_name = var.rg_name
}

# module "rbac" {
#   source = "./Modules/rbac"
#   client_secret = var.client_secret
#   rg_name = var.rg_name
# }

module "rg" {
  source = "./Modules/rg"
  rg_name = var.rg_name
}