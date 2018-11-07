resource "azurerm_resource_group" "test" {
  name     = "${var.name}"
  location = "${var.location}"

  tags {
    environment = "${var.env}"
  }
}