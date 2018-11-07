module "resource_group" {
  source                      = "../modules/resource_group"
  env                         = "${var.env}"
  location                    = "${var.location}"
  azurerm_resource_group_name = "${var.azurerm_resource_group_name}"
}

module "storage" {
  source                         = "../modules/storage"
  env                            = "${var.env}"
  location                       = "${var.location}"
  resource_group_name            = "${module.resource_group.name}"
  azurerm_storage_account_name   = "${var.azurerm_storage_account_name}"
  azurerm_storage_container_name = "${var.azurerm_storage_container_name}"
  azurerm_storage_blob_name      = "${var.azurerm_storage_blob_name}"
}

module "virtual_machine" {
  source                = "../modules/virtual_machine"
  env                   = "${var.env}"
  location              = "${var.location}"
  resource_group_name   = "${module.resource_group.name}"
  prefix                = "${var.prefix}"
  address_space         = "${var.address_space}"
  subnet1_address_space = "${var.subnet1_address_space}"
}
