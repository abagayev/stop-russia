resource "random_shuffle" "az" {
  input = [
    "eastasia", # East Asia
    "japaneast", # JA West
    "japanwest", # JA West
    "koreacentral", # KR Central
    "southeastasia", # Southeast Asia
    "southindia", # IN South
    "westindia", # IN West
    "centralindia" # (Asia Pacific) Central India
  ]
  result_count = 1
}

resource "azurerm_resource_group" "stoprussia" {
    name     = var.resource_group_name
    # location = var.region # region from vars
    location = random_shuffle.az.result[0] # random asian region
}

resource "azurerm_container_group" "stoprussia" {
    name                = sha1("stoprussia-${data.azurerm_client_config.current.tenant_id}") # sha1 for unique name that is automagic
    location            = azurerm_resource_group.stoprussia.location
    resource_group_name = azurerm_resource_group.stoprussia.name

    ip_address_type     = "None"
    os_type             = "Linux"
    restart_policy      = "Always"

    container {
        name   = "stoprussia-0"
        image  = "abagayev/stop-russia:latest"
        cpu    = var.cpu_spec
        memory = var.mem_spec
    }

    # replicate additional `container` blocks here

}
