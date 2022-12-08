resource "azurerm_resource_group" "myrg" {
  name     = local.l_rg_name
  location = var.rg_location
}

resource "azurerm_storage_account" "mystorage" {
  name                     = local.l_store_name
  resource_group_name      = azurerm_resource_group.myrg.name
  location                 = azurerm_resource_group.myrg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "${var.env}"
    usedby ="biju"
    approval="autoapproval"
  }
}