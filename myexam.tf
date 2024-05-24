locals {
  vm_names = ["firstvm", "secondvm", "thirdvm", "fourthvm", "fifthvm"]
}

resource "azurerm_resource_group" "musicresourcegroup" {
  name     = "MUSIC_resource_group"
  location = "Canada Central"
}

resource "azurerm_virtual_network" "musicvn" {
  name                = "musicvn"
  address_space       = ["10.0.0.0/18"]
  location            = azurerm_resource_group.musicresourcegroup.location
  resource_group_name = azurerm_resource_group.musicresourcegroup.name
}

resource "azurerm_subnet" "musicvn" {
  name                 = "musicvn-subnet"
  resource_group_name  = azurerm_resource_group.musicresourcegroup.name
  virtual_network_name = azurerm_virtual_network.musicvn.name
  address_prefixes     = ["10.0.0.0/24"] 
}

resource "azurerm_network_interface" "musicvn" {
  for_each            = toset(local.vm_names)
  name                = "${each.key}-nic"
  location            = azurerm_resource_group.musicresourcegroup.location
  resource_group_name = azurerm_resource_group.musicresourcegroup.name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.musicvn.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "musicvn" {
  for_each               = { for name in local.vm_names : name => name }
  name                   = "${each.value}-vm"
  location               = azurerm_resource_group.musicresourcegroup.location
  resource_group_name    = azurerm_resource_group.musicresourcegroup.name
  network_interface_ids  = [azurerm_network_interface.musicvn[each.key].id]
  vm_size                = "Standard_DS1_v2"

  storage_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

  storage_os_disk {
    name              = "myosdisk-${each.value}"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = each.value
    admin_username = var.admin_username
    admin_password = var.admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  tags = {
    environment = "staging"
  }
}

variable "prefix1" {
  default = "tfvmex"
}

variable "admin_username" {
  type = string
  default = "my_default_username"
}

variable "admin_password" {
  type = string
  default = "my_default_password"
}

variable "pc_name" {
  type    = string
  default = "mymusicpc"
}

output "pc_name" {
  value = var.pc_name
}

output "admin_username" {
  sensitive = true
  value     = var.admin_username
}

output "admin_password" {
  sensitive = true
  value     = var.admin_password
}
