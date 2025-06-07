env                         = "dev"
rg_location                 = "Uk West"
zone_name                   = "nareshdevops1218.online"
dns_record_resource_group   = "myfirstvm_group"
storage_image_reference     = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Compute/images/local-devops-practice"
ip_configuration_subnet_id  = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Network/virtualNetworks/myfirstvm-vnet/subnets/default"
network_security_group_id   = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/raghuproject_resources/providers/Microsoft.Network/networkSecurityGroups/allow-all-test"

databases {
    mysql = {
        rg_name = "ukwest"
    }
    rabbitmq = {
        rg_name = "ukwest"
    }
    redis = {
        rg_name = "ukwest"
    }
    mongodb = {
        rg_name = "ukwest"
    }
}
applications {
    catalogue = {}
    cart = {}
    user = {}
    shipping = {}
    payment = {}
    frontend = {}
}

rg_name {
    ukwest = {
        location  = "UK West"
    }
}