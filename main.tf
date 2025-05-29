# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "1c8859e3-276f-40f1-afc9-1dd8f8dc18d7"
}

resource "azurerm_network_interface" "frontend" {
  name                = "frontend"
  location            = "UK West"
  resource_group_name = "myfirstvm_group"

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Network/virtualNetworks/myfirstvm-vnet/subnets/default"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.frontend.id
  }
}

resource "azurerm_public_ip" "frontend" {
  name                    = "frontend"
  location                = "UK West"
  resource_group_name     = "myfirstvm_group"
  allocation_method       = "Static"
}

resource "azurerm_virtual_machine" "frontend" {
  name                  = "frontend"
  location              = "UK West"
  resource_group_name   = "myfirstvm_group"
  network_interface_ids = [azurerm_network_interface.frontend.id]
  vm_size               = "Standard_B2s"

  delete_os_disk_on_termination = true

  storage_image_reference {
   id = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "frontend"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "frontend"
    admin_username = "azuser"
    admin_password = "devops@123456"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}


resource "azurerm_network_interface" "mongodb" {
  name                = "mongodb"
  location            = "UK West"
  resource_group_name = "myfirstvm_group"

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Network/virtualNetworks/myfirstvm-vnet/subnets/default"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.mongodb.id
  }
}

resource "azurerm_public_ip" "mongodb" {
  name                    = "mongodb"
  location                = "UK West"
  resource_group_name     = "myfirstvm_group"
  allocation_method       = "Static"
}

resource "azurerm_virtual_machine" "mongodb" {
  name                  = "mongodb"
  location              = "UK West"
  resource_group_name   = "myfirstvm_group"
  network_interface_ids = [azurerm_network_interface.mongodb.id]
  vm_size               = "Standard_B2s"

  delete_os_disk_on_termination = true

  storage_image_reference {
   id = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "mongodb"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "mongodb"
    admin_username = "azuser"
    admin_password = "devops@123456"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}

resource "azurerm_network_interface" "catalogue" {
  name                = "catalogue"
  location            = "UK West"
  resource_group_name = "myfirstvm_group"

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Network/virtualNetworks/myfirstvm-vnet/subnets/default"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.catalogue.id
  }
}

resource "azurerm_public_ip" "catalogue" {
  name                    = "catalogue"
  location                = "UK West"
  resource_group_name     = "myfirstvm_group"
  allocation_method       = "Static"
}

resource "azurerm_virtual_machine" "catalogue" {
  name                  = "catalogue"
  location              = "UK West"
  resource_group_name   = "myfirstvm_group"
  network_interface_ids = [azurerm_network_interface.catalogue.id]
  vm_size               = "Standard_B2s"

  delete_os_disk_on_termination = true

  storage_image_reference {
   id = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "catalogue"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "catalogue"
    admin_username = "azuser"
    admin_password = "devops@123456"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}


resource "azurerm_network_interface" "redis" {
  name                = "redis"
  location            = "UK West"
  resource_group_name = "myfirstvm_group"

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Network/virtualNetworks/myfirstvm-vnet/subnets/default"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.redis.id
  }
}

resource "azurerm_public_ip" "redis" {
  name                    = "redis"
  location                = "UK West"
  resource_group_name     = "myfirstvm_group"
  allocation_method       = "Static"
}

resource "azurerm_virtual_machine" "redis" {
  name                  = "redis"
  location              = "UK West"
  resource_group_name   = "myfirstvm_group"
  network_interface_ids = [azurerm_network_interface.redis.id]
  vm_size               = "Standard_B2s"

  delete_os_disk_on_termination = true

  storage_image_reference {
   id = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "redis"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "redis"
    admin_username = "azuser"
    admin_password = "devops@123456"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}

resource "azurerm_network_interface" "user" {
  name                = "user"
  location            = "UK West"
  resource_group_name = "myfirstvm_group"

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Network/virtualNetworks/myfirstvm-vnet/subnets/default"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.user.id
  }
}

resource "azurerm_public_ip" "user" {
  name                    = "user"
  location                = "UK West"
  resource_group_name     = "myfirstvm_group"
  allocation_method       = "Static"
}

resource "azurerm_virtual_machine" "user" {
  name                  = "user"
  location              = "UK West"
  resource_group_name   = "myfirstvm_group"
  network_interface_ids = [azurerm_network_interface.user.id]
  vm_size               = "Standard_B2s"

  delete_os_disk_on_termination = true

  storage_image_reference {
   id = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "user"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "user"
    admin_username = "azuser"
    admin_password = "devops@123456"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}


resource "azurerm_network_interface" "cart" {
  name                = "cart"
  location            = "UK West"
  resource_group_name = "myfirstvm_group"

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Network/virtualNetworks/myfirstvm-vnet/subnets/default"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.cart.id
  }
}

resource "azurerm_public_ip" "cart" {
  name                    = "cart"
  location                = "UK West"
  resource_group_name     = "myfirstvm_group"
  allocation_method       = "Static"
}

resource "azurerm_virtual_machine" "cart" {
  name                  = "cart"
  location              = "UK West"
  resource_group_name   = "myfirstvm_group"
  network_interface_ids = [azurerm_network_interface.cart.id]
  vm_size               = "Standard_B2s"

  delete_os_disk_on_termination = true

  storage_image_reference {
   id = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "cart"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "cart"
    admin_username = "azuser"
    admin_password = "devops@123456"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}

resource "azurerm_network_interface" "mysql" {
  name                = "mysql"
  location            = "UK West"
  resource_group_name = "myfirstvm_group"

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Network/virtualNetworks/myfirstvm-vnet/subnets/default"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.mysql.id
  }
}

resource "azurerm_public_ip" "mysql" {
  name                    = "mysql"
  location                = "UK West"
  resource_group_name     = "myfirstvm_group"
  allocation_method       = "Static"
}

resource "azurerm_virtual_machine" "mysql" {
  name                  = "mysql"
  location              = "UK West"
  resource_group_name   = "myfirstvm_group"
  network_interface_ids = [azurerm_network_interface.mysql.id]
  vm_size               = "Standard_B2s"

  delete_os_disk_on_termination = true

  storage_image_reference {
   id = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "mysql"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "mysql"
    admin_username = "azuser"
    admin_password = "devops@123456"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}

resource "azurerm_network_interface" "shipping" {
  name                = "shipping"
  location            = "UK West"
  resource_group_name = "myfirstvm_group"

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Network/virtualNetworks/myfirstvm-vnet/subnets/default"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.shipping.id
  }
}

resource "azurerm_public_ip" "shipping" {
  name                    = "shipping"
  location                = "UK West"
  resource_group_name     = "myfirstvm_group"
  allocation_method       = "Static"
}

resource "azurerm_virtual_machine" "shipping" {
  name                  = "shipping"
  location              = "UK West"
  resource_group_name   = "myfirstvm_group"
  network_interface_ids = [azurerm_network_interface.shipping.id]
  vm_size               = "Standard_B2s"

  delete_os_disk_on_termination = true

  storage_image_reference {
   id = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "shipping"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "shipping"
    admin_username = "azuser"
    admin_password = "devops@123456"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}



resource "azurerm_network_interface" "rabbitmq" {
  name                = "rabbitmq"
  location            = "UK West"
  resource_group_name = "myfirstvm_group"

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Network/virtualNetworks/myfirstvm-vnet/subnets/default"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.rabbitmq.id
  }
}

resource "azurerm_public_ip" "rabbitmq" {
  name                    = "rabbitmq"
  location                = "UK West"
  resource_group_name     = "myfirstvm_group"
  allocation_method       = "Static"
}

resource "azurerm_virtual_machine" "rabbitmq" {
  name                  = "rabbitmq"
  location              = "UK West"
  resource_group_name   = "myfirstvm_group"
  network_interface_ids = [azurerm_network_interface.rabbitmq.id]
  vm_size               = "Standard_B2s"

  delete_os_disk_on_termination = true

  storage_image_reference {
   id = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "rabbitmq"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "rabbitmq"
    admin_username = "azuser"
    admin_password = "devops@123456"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}

resource "azurerm_network_interface" "payment" {
  name                = "payment"
  location            = "UK West"
  resource_group_name = "myfirstvm_group"

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Network/virtualNetworks/myfirstvm-vnet/subnets/default"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.payment.id
  }
}

resource "azurerm_public_ip" "payment" {
  name                    = "payment"
  location                = "UK West"
  resource_group_name     = "myfirstvm_group"
  allocation_method       = "Static"
}

resource "azurerm_virtual_machine" "payment" {
  name                  = "payment"
  location              = "UK West"
  resource_group_name   = "myfirstvm_group"
  network_interface_ids = [azurerm_network_interface.payment.id]
  vm_size               = "Standard_B2s"

  delete_os_disk_on_termination = true

  storage_image_reference {
   id = "/subscriptions/1c8859e3-276f-40f1-afc9-1dd8f8dc18d7/resourceGroups/myfirstvm_group/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "payment"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "payment"
    admin_username = "azuser"
    admin_password = "devops@123456"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}


### DNS Records
resource "azurerm_dns_a_record" "frontend" {
  name                  = "frontend"
  zone_name             = "nareshdevops1218.online"
  resource_group_name   = "myfirstvm_group"
  ttl                   = 3
  records               = [azurerm_network_interface.frontend.private_ip_address]
}

resource "azurerm_dns_a_record" "catalogue" {
  name                  = "catalogue"
  zone_name             = "nareshdevops1218.online"
  resource_group_name   = "myfirstvm_group"
  ttl                   = 3
  records               = [azurerm_network_interface.catalogue.private_ip_address]
}

resource "azurerm_dns_a_record" "mongodb" {
  name                  = "mongodb"
  zone_name             = "nareshdevops1218.online"
  resource_group_name   = "myfirstvm_group"
  ttl                   = 3
  records               = [azurerm_network_interface.mongodb.private_ip_address]
}

resource "azurerm_dns_a_record" "cart" {
  name                  = "cart"
  zone_name             = "nareshdevops1218.online"
  resource_group_name   = "myfirstvm_group"
  ttl                   = 3
  records               = [azurerm_network_interface.cart.private_ip_address]
}

resource "azurerm_dns_a_record" "user" {
  name                  = "user"
  zone_name             = "nareshdevops1218.online"
  resource_group_name   = "myfirstvm_group"
  ttl                   = 3
  records               = [azurerm_network_interface.user.private_ip_address]
}

resource "azurerm_dns_a_record" "shipping" {
  name                  = "shipping"
  zone_name             = "nareshdevops1218.online"
  resource_group_name   = "myfirstvm_group"
  ttl                   = 3
  records               = [azurerm_network_interface.shipping.private_ip_address]
}

resource "azurerm_dns_a_record" "payment" {
  name                  = "payment"
  zone_name             = "nareshdevops1218.online"
  resource_group_name   = "myfirstvm_group"
  ttl                   = 3
  records               = [azurerm_network_interface.payment.private_ip_address]
}

resource "azurerm_dns_a_record" "rabbitmq" {
  name                  = "rabbitmq"
  zone_name             = "nareshdevops1218.online"
  resource_group_name   = "myfirstvm_group"
  ttl                   = 3
  records               = [azurerm_network_interface.rabbitmq.private_ip_address]
}

resource "azurerm_dns_a_record" "mysql" {
  name                  = "mysql"
  zone_name             = "nareshdevops1218.online"
  resource_group_name   = "myfirstvm_group"
  ttl                   = 3
  records               = [azurerm_network_interface.mysql.private_ip_address]
}

resource "azurerm_dns_a_record" "redis" {
  name                  = "redis"
  zone_name             = "nareshdevops1218.online"
  resource_group_name   = "myfirstvm_group"
  ttl                   = 3
  records               = [azurerm_network_interface.redis.private_ip_address]
}