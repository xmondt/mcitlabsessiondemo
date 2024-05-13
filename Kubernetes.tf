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

output "company_name_output"{
    value=var.company_name
}

