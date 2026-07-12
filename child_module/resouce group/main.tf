resource "azurerm_resource_group" "ram" {
    for_each = var.rgss
    name = each.value.name
    location = each.value.location
}
    