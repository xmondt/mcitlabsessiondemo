terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.90.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "your_subscription_id"
  client_id      = "your_client_id"
  client_secret = "your_client_secret"
  tenant_id      = "your_tenant_id"
}

resource "azurerm_resource_group" "video2resourcegroup" {
  name     = "VIDEO2_resource_group"
  location = "Canada East"
}

resource "azurerm_virtual_network" "videovn" {
  name            = "videovn"
  address_space   = ["10.0.0.0/16"]
  location        = azurerm_resource_group.video2resourcegroup.location
  resource_group_name = azurerm_resource_group.video2resourcegroup.name
}

resource "azurerm_virtual_machine" "videovm" {
  count            = 5
  name            = element(["sixthvm", "seventhvm", "eighthvm", "ninthvm", "tenthvm"], count.index)
  resource_group_name = azurerm_resource_group.video2resourcegroup.name
  location        = azurerm_resource_group.video2resourcegroup.location
  vm_size         = "Standard_DS2_v2"
  network_interface_ids = [azurerm_network_interface.videovn[each.key].id]
}

resource "azurerm_network_interface" "videovn" {
  count            = 5
  name            = "videovn-nic-${count.index}"
  location        = azurerm_resource_group.video2resourcegroup.location
  resource_group_name = azurerm_resource_group.video2resourcegroup.name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.videovn.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_subnet" "videovn" {
  name            = "videovn-subnet"
  resource_group_name = azurerm_resource_group.video2resourcegroup.name
  virtual_network_name = azurerm_virtual_network.videovn.name
  address_prefixes     = ["10.0.1.0/24"]
}

