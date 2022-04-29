resource "azurerm_resource_group" "rezcorprg001" {
    name = "rezcorprg001"
    location = "westeurope"
}


resource "azurerm_storage_account" "rezcorpsa001" {
    name = "rezcorpsa001"
    resource_group_name = azurerm_resource_group.rezcorprg001.name
    location = "westeurope"
    account_tier = "Standard"
    account_replication_type = "LRS"
}

// TODO: dodać coś
