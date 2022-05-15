resource "azurerm_resource_group" "rg1t" {
    name = local.rg_name
    location = "westeurope"
}