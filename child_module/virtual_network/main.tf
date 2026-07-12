resource "azurerm_virtual_network" "name" {
    for_each = var.vnets 
    location = each.value.location
    name = each.value.name
    resource_group_name = each.value.resource_group_name
    address_space = each.value.address_space
}
