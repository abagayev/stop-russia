resource "azurerm_app_service_plan" "stoprussia" {
    name                = "wacentralus"
    location            = "Central US"
    resource_group_name = var.resource_group_name
    kind                = "Linux"
    reserved            = true

    sku {
      tier = "Basic"
      size = "B1"
      capacity = 1
    }
}