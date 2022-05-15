# module "aad_groups" {
#   source = "./Modules/aad_groups"
#   client_secret = var.client_secret
#   rg_name = var.rg_name
# }

# module "rbac" {
#   source = "./Modules/rbac"
#   client_secret = var.client_secret
#   rg_name = var.rg_name
# }

module "rg" {
  source = "./Modules/rg"
  rg_name = "test1234"
}