resource "azurerm_role_definition" "network_dnszone_operator" {
  name        = "Network DNSZone Operator"
  scope       = "/subscriptions/${local.subscription_id}"
  description = "This is a custom test role"

  permissions {
    actions = [
        "Microsoft.Network/dnszones/read",
        "Microsoft.Network/dnszones/write",
        "Microsoft.Network/dnszones/delete",
        "Microsoft.Network/dnszones/A/read",
        "Microsoft.Network/dnszones/A/write",
        "Microsoft.Network/dnszones/A/delete",
        "Microsoft.Network/dnszones/AAAA/read",
        "Microsoft.Network/dnszones/AAAA/write",
        "Microsoft.Network/dnszones/AAAA/delete",
        "Microsoft.Network/dnszones/CAA/read",
        "Microsoft.Network/dnszones/CAA/write",
        "Microsoft.Network/dnszones/CAA/delete",
        "Microsoft.Network/dnszones/CNAME/read",
        "Microsoft.Network/dnszones/CNAME/write",
        "Microsoft.Network/dnszones/MX/read",
        "Microsoft.Network/dnszones/CNAME/delete",
        "Microsoft.Network/dnszones/MX/write",
        "Microsoft.Network/dnszones/MX/delete",
        "Microsoft.Network/dnszones/PTR/read",
        "Microsoft.Network/dnszones/PTR/write",
        "Microsoft.Network/dnszones/PTR/delete",
        "Microsoft.Network/dnszones/SRV/read",
        "Microsoft.Network/dnszones/SRV/write",
        "Microsoft.Network/dnszones/SRV/delete",
        "Microsoft.Network/dnszones/TXT/read",
        "Microsoft.Network/dnszones/TXT/write",
        "Microsoft.Network/dnszones/TXT/delete",
        "Microsoft.Network/dnszones/all/read",
        "Microsoft.Network/dnszones/recordsets/read",
        "Microsoft.Network/dnszones/NS/read",
        "Microsoft.Network/dnszones/NS/write",
        "Microsoft.Network/dnszones/NS/delete",
        "Microsoft.Network/dnszones/SOA/read",
        "Microsoft.Network/dnszones/SOA/write"
    ]
    not_actions = []
  }

  assignable_scopes = [
    "/subscriptions/${local.subscription_id}"
  ]
}