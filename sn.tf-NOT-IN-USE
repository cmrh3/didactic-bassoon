resource "azurerm_subnet" "aks_sbn" {
  name                 = "cmrh-aks-subnet"
  resource_group_name  = azurerm_resource_group.aks_rg.name
  virtual_network_name = azurerm_virtual_network.aks_vnet.name
  address_prefixes     = ["10.0.1.0/24"]

#   delegation {
#     name = "delegation"

#     service_delegation {
#       name    = "Microsoft.ContainerInstance/containerGroups"
#       actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"]
#     }
#   }
}


data "azurerm_subnet" "aks_sbn_data" {
  name                 = "cmrh-aks-subnet"
  virtual_network_name = azurerm_virtual_network.aks_vnet.name
  resource_group_name  = azurerm_virtual_network.aks_vnet.name
}

output "subnet_id" {
  value = data.azurerm_subnet.aks_sbn_data.id
}