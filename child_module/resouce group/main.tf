resource "azurerm_resource_group" "ram" {
for_each = var.rgss
    name = each_value.name



}
    