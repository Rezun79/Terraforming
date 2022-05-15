# terraform {
#   required_providers {
#     azuread = {
#       source  = "hashicorp/azuread"
#       version = "~> 2.13.0"
#     }
#   }
# }

# # Configure the Microsoft Azure Provider
# provider "azuread" {
#   client_id       = "24b03878-b0cb-4e2f-a8e6-0e047e97ae76"
#   client_secret   = local.client_secret
#   tenant_id       = "217169d8-df66-4dba-8be8-d6dd16522443"
# }

# data "azuread_domains" "RezcorpAD" {
#   only_initial = true
# }

# output "RezcorpAD_domains" {
#   value = data.azuread_domains.RezcorpAD.domains.*.domain_name
# }

# data "azuread_client_config" "current" {}

# output "object_id" {
#   value = data.azuread_client_config.current.object_id
# }