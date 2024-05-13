locals{ 
  cluster_names=["mixer","producer","buyer","seller","merchant"]
}
resource "azurerm_resource_group" "myazuremusicresourcegroup" {
  name     = "MUSIC_resource_group"
  location = "Canada Central"
}

output "MUSIC_resource_group_output"{
  value = var.myazuremusicresourcegroup
}
