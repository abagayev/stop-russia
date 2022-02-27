provider "azurerm" {
    features {}
    version = "=2.50.0"
}

data "azurerm_client_config" "current" {}
