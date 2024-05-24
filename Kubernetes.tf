locals{ 
  cluster_names = ["mixer", "producer", "buyer", "seller", "merchant"]
}

resource "azurerm_resource_group" "musicresourcegroup1" {
  name     = "MUSIC_resource_group1"
  location = "Canada Central"
}

resource "azurerm_kubernetes_cluster" "batchabcd" {
  for_each = { for cluster in local.cluster_names : cluster => cluster }
  name                = "MUSIC_${each.key}"
  location            = azurerm_resource_group.musicresourcegroup1.location
  resource_group_name = azurerm_resource_group.musicresourcegroup1.name
  dns_prefix          = "musicdns-${each.key}"

  identity{
  type = "SystemAssigned"
  }

  default_node_pool {
    name       = "default"
    node_count = 3
    vm_size    = "Standard_D2_v2"
  }
}

 
