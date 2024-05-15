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

output "kubernetes_cluster_names" {
  value = [for cluster in azurerm_kubernetes_cluster.batchabcd : cluster.name]
}

resource "azurerm_resource_group" "concertresourcegroup" {
  name     = "CONCERT_resource_group"
  location = "UAE Central"
}

