locals{ 
  cluster_names=["mixer","producer","buyer","seller","merchant"]
}
resource "azurerm_resource_group" "musicresourcegroup" {
  name     = "MUSIC_resource_group"
  location = "Canada Central"
}

resource "azurerm_resource_group" "concertresourcegroup" {
  name     = "CONCERT_resource_group"
  location = "UAE Central"
}

output "company_name_output"{
    value=var.company_name
}

resource "azurerm_kubernetes_cluster" "batchabcd" {
  for_each            = {for cluster in var.classworkclusters: cluster=>cluster}
  name                = "${var.prefix}${each.key}"
  location            = azurerm_resource_group.azureresourcegroup.location
  resource_group_name = azurerm_resource_group.azureresourcegroup.name
  dns_prefix          = var.dnsprefix

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
