# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "1c8859e3-276f-40f1-afc9-1dd8f8dc18d7"
}

module "frontend" {
  source                     = "./component"
  resource_group_name        = var.resource_group_name
  location                   = var.location
  name                       = "frontend"
  zone_name                  = var.zone_name
  storage_image_reference    = var.storage_image_reference
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
}

module "mongodb" {
  source                     = "./components"
  resource_group_name        = var.resource_group_name
  location                   = var.location
  name                       = "mongodb"
  zone_name                  = var.zone_name
  storage_image_reference    = var.storage_image_reference
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
}

module "mysql" {
  source                     = "./components"
  resource_group_name        = var.resource_group_name
  location                   = var.location
  name                       = "mysql"
  zone_name                  = var.zone_name
  storage_image_reference    = var.storage_image_reference
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
}

module "redis" {
  source                     = "./components"
  resource_group_name        = var.resource_group_name
  location                   = var.location
  name                       = "redis"
  zone_name                  = var.zone_name
  storage_image_reference    = var.storage_image_reference
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
}

module "catalogue" {
  source                     = "./components"
  resource_group_name        = var.resource_group_name
  location                   = var.location
  name                       = "catalogue"
  zone_name                  = var.zone_name
  storage_image_reference    = var.storage_image_reference
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
}

module "user" {
  source                     = "./components"
  resource_group_name        = var.resource_group_name
  location                   = var.location
  name                       = "user"
  zone_name                  = var.zone_name
  storage_image_reference    = var.storage_image_reference
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
}

module "frcartontend" {
  source                     = "./components"
  resource_group_name        = var.resource_group_name
  location                   = var.location
  name                       = "cart"
  zone_name                  = var.zone_name
  storage_image_reference    = var.storage_image_reference
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
}

module "shipping" {
  source                     = "./components"
  resource_group_name        = var.resource_group_name
  location                   = var.location
  name                       = "shipping"
  zone_name                  = var.zone_name
  storage_image_reference    = var.storage_image_reference
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
}

module "rabbitmq" {
  source                     = "./components"
  resource_group_name        = var.resource_group_name
  location                   = var.location
  name                       = "rabbitmq"
  zone_name                  = var.zone_name
  storage_image_reference    = var.storage_image_reference
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
}

module "payment" {
  source                     = "./components"
  resource_group_name        = var.resource_group_name
  location                   = var.location
  name                       = "payment"
  zone_name                  = var.zone_name
  storage_image_reference    = var.storage_image_reference
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
}