variable "resource_group_name" {
  default = "myfirstvm_group"
}

variable "location" {
  default = "UK West"
}

variable "zone_name" {
  default = "nareshdevops1218.online"
}

variable "storage_image_reference" {
  default = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Compute/images/local-devops-practice"
}

variable "ip_configuration_subnet_id" {
  default = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Network/virtualNetworks/myfirstvm-vnet/subnets/default"
}

variable "network_security_group_id" {
    default = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Network/networkSecurityGroups/allow-all"
  
}