# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "1c8859e3-276f-40f1-afc9-1dd8f8dc18d7"
}

terraform {
  backend "azurerm" {}
}

provider "vault" {
 address = "http://vault.nareshdevops1218.online:8200"
 token   = var.token
}