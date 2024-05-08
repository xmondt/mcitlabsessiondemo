#This is an Azure Montreal College Information Technology - Lab Session

resource "azurerm_resource_group" "azureresourcegroup" {
  name     = "MCIT_lab_session"
  location = "Canada Central"
}

resource "azurerm_storage_account" "azurermmcitcountexample" {
  count=5
  name                     = "${var.prefix}storage${count.index}"
  resource_group_name      = azurerm_resource_group.azureresourcegroup.name
  location                 = azurerm_resource_group.azureresourcegroup.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  access_tier=var.access_tier
  cross_tenant_replication_enabled = var.cross_tenant_replication_enabled
  tags = {
    environment = var.environment
  }
}

