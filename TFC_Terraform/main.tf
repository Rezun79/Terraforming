resource "tfe_workspace" "tfc_workspace" {
  name         = "test1"
  organization = var.tfc_organization_name
  vcs_repo {
    identifier = "Rezun79/TFC"
    oauth_token_id = "ot-DRNHuDvKVrRwfCmj"
  }
  tag_names    = ["test", "app"]
}

resource "tfe_variable" "client_secret" {
  key          = "client_secret"
  value        = "ascacedcwecwec"
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.tfc_workspace.id
  description  = "SPN Secret"
}