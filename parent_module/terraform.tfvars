resource_group = {
  rg1 = {
    name     = "ektarg"
    location = "centralindia"
  }
}

virtual_network = {
  vnet = {
    name                = "ektavnet"
    location            = "centralindia"
    resource_group_name = "ektarg"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet = {
  subnet1 = {
    name                 = "ektasubnet"
    virtual_network_name = "ektavnet"
    resource_group_name  = "ektarg"
    address_prefixes     = ["10.0.1.0/24"]
  }
}
