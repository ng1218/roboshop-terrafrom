resource "azurerm_resource_group" "main" {
  name     = var.rg_name
  location = "UK West"
}