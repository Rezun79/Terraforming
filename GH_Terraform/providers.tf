terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "4.26.0"
    }
  }
}

provider "github" {
  token = var.token
  owner = var.github_organization
}