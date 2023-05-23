resource "azurerm_container_registry" "az_cr" {
  name                = "cmrhContainerRegistry"
  resource_group_name = azurerm_resource_group.aks_rg.name
  location            = azurerm_resource_group.aks_rg.location
  sku                 = "Premium"
}

resource "azurerm_role_assignment" "aks_to_acr_role" {
  principal_id                     = azurerm_kubernetes_cluster.aks_default.object_id
  role_definition_name             = "AcrPull"
  scope                            = azurerm_container_registry.az_cr.id
  skip_service_principal_aad_check = true
}

data "azurerm_container_registry" "az_cr" {
  name = "cmrhContainerRegistry"
  resource_group_name = azurerm_resource_group.aks_rg.name
}
