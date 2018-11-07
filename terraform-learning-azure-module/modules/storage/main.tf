resource "azurerm_storage_account" "test" {
  name                     = "${var.azurerm_storage_account_name}"
  resource_group_name      = "${var.resource_group_name}"
  location                 = "${var.location}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "test" {
  name                  = "${var.azurerm_storage_container_name}"
  resource_group_name   = "${var.resource_group_name}"
  storage_account_name  = "${azurerm_storage_account.test.name}"
  container_access_type = "private"
}

resource "azurerm_storage_blob" "testsb" {
  name = "${var.azurerm_storage_blob_name}"

  resource_group_name    = "${var.resource_group_name}"
  storage_account_name   = "${azurerm_storage_account.test.name}"
  storage_container_name = "${azurerm_storage_container.test.name}"

  type = "page"
  size = 5120
}