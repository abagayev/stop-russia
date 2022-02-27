resource "azurerm_app_service" "stoprussia" {
    name                =   var.name
    location            =   azurerm_app_service_plan.stoprussia.location
    resource_group_name =   azurerm_app_service_plan.stoprussia.resource_group_name
    app_service_plan_id =   azurerm_app_service_plan.stoprussia.id

    enabled             =   true
    https_only          =   true

    site_config {
        always_on           =   true
        app_command_line    =   ""
        linux_fx_version    =   "DOCKER|stoprussia.azurecr.io/stop-russia-azure-app-service:latest"
        ftps_state          =   "Disabled"
    }

    app_settings = {
        "WEBSITES_PORT"                         =   "8080"
        "WEBSITES_ENABLE_APP_SERVICE_STORAGE"   =   "false"
        "WEBSITES_CONTAINER_START_TIME_LIMIT"   =   "15"
        "DOCKER_REGISTRY_SERVER_URL"            =   "https://stoprussia.azurecr.io"
    }

    lifecycle {
        ignore_changes = [ site_config[0].linux_fx_version ]
    }

}
