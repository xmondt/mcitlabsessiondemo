locals{ 
  cluster_names=["mixer","producer","buyer","seller","merchant"]
}
resource "azurerm_resource_group" "azureresourcegroup1" {
  name     = "Music_resource_group"
  location = "Canada Central"
}
