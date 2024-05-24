terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "latest"
    }
  }
}

provider "azurerm" {
  version = "latest"
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "video2resourcegroup"
  location = "Canada East"
}

resource "azurerm_virtual_network" "vn" {
  name                = "videovn"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_virtual_machine" "vm" {
  count = length(var.vms)

  name                  = var.vms[count.index].name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  vm_size               = var.vms[count.index].vm_size
  image {
    id = var.vms[count.index].image
  }
  admin_username = var.vms[count.index].admin_username
  admin_password = var.vms[count.index].admin_password
  virtual_network_ids = [azurerm_virtual_network.vn.id]
}

variable "vms" {
  type = list(object({
    name            = string
    resource_group = string
    location       = string
    vm_size        = string
    image          = string
    admin_username = string
    admin_password = string
    virtual_network = string
  }))
}


