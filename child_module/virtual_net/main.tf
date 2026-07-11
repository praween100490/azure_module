resource "azurerm_virtual_network" "name" {
    for_each = var.vnetslocation = each.value.location 
    name = each.value.location
    resource_group_name = each.value.resource_group_name
}
