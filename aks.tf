resource "azurerm_kubernetes_cluster" "aks_default" {
  name                = "cmrh-aks"
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name
  dns_prefix          = "cmrh-k8s"

  default_node_pool {
    name            = "default"
    node_count      = 2
    vm_size         = "Standard_B2s"
    os_disk_size_gb = 30
  }

  service_principal {
    client_id       = var.ARM_CLIENT_ID
    client_secret   = var.ARM_CLIENT_SECRET
  }

  role_based_access_control_enabled = true

  tags = {
    environment = "Demo"
  }
}
