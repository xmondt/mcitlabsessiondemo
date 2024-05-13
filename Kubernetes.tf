locals{ 
  cluster_names=["mixer","producer","buyer","seller","merchant"]
}
resource "azurerm_resource_group" "azureresourcegroup" {
  name     = "MCIT_resource_group"
  location = "Canada Central"
}
