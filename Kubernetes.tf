locals{ 
  cluster_names=["mixer","producer","buyer","seller","merchant"]
}
resource "azurerm_resource_group" "azureresourcegroup" {
  name     = "Sam_music_resource_group"
  location = "Canada Central"
}
