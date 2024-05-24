locals{
   vm_names=["firstvm","secondvm","thirdvm","fourthvm","fifthvm"]
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
  address_prefixes     = ["10.0.0.0/32"]
}

resource "azurerm_network_interface" "musicvn" {
  for_each            = toset(local.vm_names)
  name                = "${var.prefix}-nic"
  location            = azurerm_resource_group.music.location
  resource_group_name = azurerm_resource_group.musicresourcegroup.name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.internal.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "musicvn" {
  count        = 5
  for_each     = {for vm in local.vm_names: vm=>vm}
  name         = "${var.prefix}-vm"
  location              = azurerm_resource_group.musicresourcegroup.location
  resource_group_name   = azurerm_resource_group.musicresourcegroup.name
  network_interface_ids = [azurerm_network_interface.musicvn.id]
  vm_size               = "Standard_DS1_v2"
}

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  # delete_os_disk_on_termination = true

  # Uncomment this line to delete the data disks automatically when deleting the VM
  # delete_data_disks_on_termination = true
}
  storage_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
}
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
}
  os_profile {
    pc_name  = var.pc_name
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
variable "prefix" {
  default = "tfvmex"
}
variable "admin_username"{
  type=string
}
variable "admin_password"{
  type=string
}
variable "pc_name"{
  type=string
  default="mymusicpc"
}
output "pc_name" {
  value = var.pc_name
}
output "admin_username" {
  sensitive = true
  value = var.admin_username
}
output "admin_password" {
  sensitive = true
  value = var.admin_password
  }
}
