module "rg" {
    source = "../child_module/resouce group"
    rgss = var.virtual_network_group
  
}
module "virtual_network"{
    depends_on = [ module.rg ]
    source = "../child_module/virtual_network"
    vnetss = var.virtual_network
}
module "subnet" {
    depends_on = [ module.virtual_network ]
    source = "../child_module/subnet"
    snetss = var.subnets
  
}