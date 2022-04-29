
resource "azuread_group" "RezCorpAdmins" {
  display_name     = "RezCorpAdmins"
  security_enabled = true
}