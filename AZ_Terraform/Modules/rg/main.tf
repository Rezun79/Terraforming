resource "azurerm_resource_group" "rg1" {
    name = local.rg_name
    location = "westeurope"
}