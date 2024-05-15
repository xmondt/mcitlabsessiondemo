locals{ 
  cluster_names=["mixer","producer","buyer","seller","merchant"]
}
resource "azurerm_resource_group" "musicresourcegroup" {
  name     = "MUSIC_resource_group"
  location = "Canada Central"
}

resource "azurerm_kubernetes_cluster" "batchabcd" {
  for_each            = {for cluster in local.cluster_names: cluster=>cluster}
  name                = "MUSIC_${each.key}"
  location            = azurerm_resource_group.musicresourcegroup.location
  resource_group_name = azurerm_resource_group.musicresourcegroup.name
  dns_prefix          = "musicdns-${each.key}"
}

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
}
/*
output "client_certificate" {
  value     = [for cluster in azurerm_kubernetes_cluster.batchabcd:cluster.kube_config.0.client_certificate]
  sensitive = true
}

output "kube_config" {
  value = [for cluster in azurerm_kubernetes_cluster.batchabcd: cluster.kube_config_raw]

  sensitive = true
}
output "kube_id"{
  value=[for cluster in azurerm_kubernetes_cluster.batchabcd:cluster.id ]
}
output "kube_name"{
  value=[for cluster in azurerm_kubernetes_cluster.batchabcd:cluster.name ]
}
*/
