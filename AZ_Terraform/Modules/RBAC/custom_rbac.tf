resource "azurerm_role_definition" "network_dnszone_operator" {
  name        = "Network DNSZone Operator"
  scope       = "/subscriptions/${local.subscription_id}"
  description = "This is a custom test role"

  permissions {
    actions     = ["Microsoft.Network/dnszones/*"]
    not_actions = []
  }

  assignable_scopes = [
    "/subscriptions/${local.subscription_id}"
  ]
}