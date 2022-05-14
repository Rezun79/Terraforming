resource "azurerm_resource_group" "rg1" {
    name = var.rg_name
    location = "westeurope"
}


# resource "azurerm_storage_account" "rezcorpsa001" {
#     name = var.sa_name
#     resource_group_name = azurerm_resource_group.rezcorprg001.name
#     location = "westeurope"
#     account_tier = "Standard"
#     account_replication_type = "LRS"
# }

module "ADD_Groups" {
  source = "./Modules/AAD_Groups"
}

module "RBAC" {
  source = "./Modules/RBAC"
}