variable "resource_group_name" {
  default = "stoprussia"
}

variable "region" {
  default = "West Europe"
}

variable "cpu_spec" {
  default = "0.5"
}

variable "mem_spec" {
  default = "0.5"
}

output "name" {
  value = azurerm_container_group.stoprussia.name
}