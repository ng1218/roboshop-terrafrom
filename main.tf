module "databases" {
  for_each                   = var.databases
  source                     = "./component"
  resource_group_name        = var.resource_group_name
  location                   = var.location
  name                       = each.key
  zone_name                  = var.zone_name
  storage_image_reference    = var.storage_image_reference
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
  network_security_group_id  = var.network_security_group_id
}

module "applications" {
  depends_on                 = [ module.databases  ]
  for_each                   = var.applications
  source                     = "./component"
  resource_group_name        = var.resource_group_name
  location                   = var.location
  name                       = each.key
  zone_name                  = var.zone_name
  storage_image_reference    = var.storage_image_reference
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
  network_security_group_id  = var.network_security_group_id
}
