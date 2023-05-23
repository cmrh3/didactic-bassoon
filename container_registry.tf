resource "azurerm_container_registry" "az_cr" {
  name                = "cmrhContainerRegistry"
  resource_group_name = azurerm_resource_group.aks_rg.name
  location            = azurerm_resource_group.aks_rg.location
  sku                 = "Premium"
}

resource "azurerm_role_assignment" "az_ra_cr_aks" {
  principal_id                     = azurerm_kubernetes_cluster.aks_default.kubelet_identity[0].object_id
  role_definition_name             = "AcrPull"
  scope                            = azurerm_container_registry.az_cr.id
  skip_service_principal_aad_check = true
}

