data "azurerm_public_ip" "test" {
  name                = "${azurerm_public_ip.test.name}"
  resource_group_name = "${azurerm_virtual_machine.test.resource_group_name}"
}