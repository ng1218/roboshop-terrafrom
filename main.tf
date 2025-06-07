module "resource-group" {
  for_each      = var.rg_name
  source        = "./modules/resource-group"
  name          = "${each.key}-${var.env}"
  location      = each.value["location"]
}

module "databases" {
  for_each                   = var.databases
  source                     = "./modules/vm"
  rg_name                    = module.resource-group[each.value["rgname"]].name
  location                   = module.resource-group[each.value["rgname"]].location
  name                       = each.key
  zone_name                  = var.zone_name
  storage_image_reference    = var.storage_image_reference
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
  network_security_group_id  = var.network_security_group_id
  dns_record_resource_group  = var.dns_record_resource_group
}

# module "applications" {
#   depends_on                 = [ module.databases ]
#   for_each                   = var.applications
#   source                     = "./component"
#   resource_group_name        = var.resource_group_name
#   name                       = each.key
#   zone_name                  = var.zone_name
#   storage_image_reference    = var.storage_image_reference
#   ip_configuration_subnet_id = var.ip_configuration_subnet_id
#   network_security_group_id  = var.network_security_group_id
# }

output "test" {
  value = module.resource-group["ukwest"].rgname
}