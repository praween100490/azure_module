resource "azurerm_resource_group" "apple" {
    for_each = var.snett
    name = each.value.name
    virtual_network_name = each.value.virtual_network_name
    resource_group_name = each.value.resource_group_name
    address_prefiexes = each.value.address_prefiexes
  
}