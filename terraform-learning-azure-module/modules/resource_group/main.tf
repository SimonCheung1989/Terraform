resource "azurerm_resource_group" "test" {
  name     = "${var.azurerm_resource_group_name}"
  location = "${var.location}"

  tags {
    environment = "${var.env}"
  }
}