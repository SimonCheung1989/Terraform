module "resource_group" {
  source   = "../modules/resource_group"
  env      = "${var.env}"
  location = "${var.location}"
}

module "storage" {
  source              = "../modules/storage"
  env                 = "${var.env}"
  location            = "${var.location}"
  resource_group_name = "${module.resource_group.name}"
}
