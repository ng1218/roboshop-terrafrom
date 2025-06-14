# data "azurerm_resource_group" "rg" {
#     name = var.rg_name
# }

data "vault_generic_secret" "roboshop_infra" {
  path = "roboshop-infra/ssh"
}
