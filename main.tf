variable "rg_name" {}

resource "azurerm_resource_group" "rg_name" {
  for_each = var.rg_name
  name = each.key
  location = each.value
}

