resource "azurerm_kubernetes_cluster" "main" {
  name                = "demo-aks1"
  location            = var.location
  resource_group_name = var.rg_name
  dns_prefix          = "roboshop"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_F2s_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}