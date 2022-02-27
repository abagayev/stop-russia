resource "azurerm_resource_group" "stoprussia" {
    name     = var.resource_group_name
    location = var.region
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