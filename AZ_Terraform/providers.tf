terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.13.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.89.0"
    }
    # github = {
    #   source = "integrations/github"
    #   version = "4.26.0"
    # }
    tfe = {
      source = "hashicorp/tfe"
      version = "0.31.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azuread" {
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}
provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

# provider "github" {
#   token = var.github_token
#   owner = var.github_organization
# }

provider "tfe" {
  token = var.tfc_token
}