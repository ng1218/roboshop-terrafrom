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
  source                     = "./component"
  resource_group_name        = var.resource_group_name
  location                   = var.location
  name                       = "mongodb"
  zone_name                  = var.zone_name
  storage_image_reference    = var.storage_image_reference
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
}

module "mysql" {
  source                     = "./component"
  resource_group_name        = var.resource_group_name
  location                   = var.location
  name                       = "mysql"
  zone_name                  = var.zone_name
  storage_image_reference    = var.storage_image_reference
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
}

module "redis" {
  source                     = "./component"
  resource_group_name        = var.resource_group_name
  location                   = var.location
  name                       = "redis"
  zone_name                  = var.zone_name
  storage_image_reference    = var.storage_image_reference
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
}

module "catalogue" {
  source                     = "./component"
  resource_group_name        = var.resource_group_name
  location                   = var.location
  name                       = "catalogue"
  zone_name                  = var.zone_name
  storage_image_reference    = var.storage_image_reference
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
}

module "user" {
  source                     = "./component"
  resource_group_name        = var.resource_group_name
  location                   = var.location
  name                       = "user"
  zone_name                  = var.zone_name
  storage_image_reference    = var.storage_image_reference
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
}

module "frcartontend" {
  source                     = "./component"
  resource_group_name        = var.resource_group_name
  location                   = var.location
  name                       = "cart"
  zone_name                  = var.zone_name
  storage_image_reference    = var.storage_image_reference
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
}

module "shipping" {
  source                     = "./component"
  resource_group_name        = var.resource_group_name
  location                   = var.location
  name                       = "shipping"
  zone_name                  = var.zone_name
  storage_image_reference    = var.storage_image_reference
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
}

module "rabbitmq" {
  source                     = "./component"
  resource_group_name        = var.resource_group_name
  location                   = var.location
  name                       = "rabbitmq"
  zone_name                  = var.zone_name
  storage_image_reference    = var.storage_image_reference
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
}

module "payment" {
  source                     = "./component"
  resource_group_name        = var.resource_group_name
  location                   = var.location
  name                       = "payment"
  zone_name                  = var.zone_name
  storage_image_reference    = var.storage_image_reference
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
}