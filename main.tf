resource "random_pet" "rg_name" {
    prefix = var.cmrh_resource_group_name_prefix
}

resource "azurerm_resource_group" "rg" {
    location = var.cmrh_resource_group_location
    name = random_pet.rg_name.id
}