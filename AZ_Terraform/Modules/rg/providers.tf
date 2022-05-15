# terraform {
#   required_providers {
#     azuread = {
#       source  = "hashicorp/azuread"
#       version = "~> 2.13.0"
#     }
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "~> 2.89.0"
#     }
#   }
# }

# # Configure the Microsoft Azure Provider
# provider "azuread" {
#   client_id       = "24b03878-b0cb-4e2f-a8e6-0e047e97ae76"
#   client_secret   = local.client_secret
#   tenant_id       = "217169d8-df66-4dba-8be8-d6dd16522443"
# }
# provider "azurerm" {
#   features {}

#   subscription_id = "653f9b86-b9d4-4959-abfd-f8a6a6bf9937"
#   client_id       = "24b03878-b0cb-4e2f-a8e6-0e047e97ae76"
#   client_secret   = local.client_secret
#   tenant_id       = "217169d8-df66-4dba-8be8-d6dd16522443"
# }