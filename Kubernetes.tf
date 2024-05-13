locals{ 
  cluster_names=["mixer","producer","buyer","seller","merchant"]
}
resource "azurerm_resource_group" "myazureresourcegroup" {
  name     = "MUSIC_resource_group"
  location = "Canada Central"
}
