resource "azurerm_network_interface" "" {
  name                = ""
  location            = ""
  resource_group_name = ""

  ip_configuration {
    name                          = "internal"
    subnet_id                     = ""
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = ""
  }
}

resource "azurerm_linux_virtual_machine" "" {
  name                = ""
  location            = ""
  resource_group_name = ""
  size                = "Standard_DS2_v2"
  admin_username      = ""
  network_interface_ids = []
  admin_ssh_key {
    username   = "reem"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDWaevpAKErOt7DGbSf8a+Yy5MQMT6ZmXBfyn+MlEJ2+MAHZUjqWfSopK0uTufYr2OqyJZ+NIyvA8izbuMdiIy2PAxL2GR4k+GueMoU2KVmD4ggNqAcQGpoM/RttqFiMvO4y/OP2touwV3HlXxxEEC1HNrrfZTpE6unXrCrioPf0I4ZZRdcY9Z+ff5pY02AEAn2i3E3OOJkmK+mD6KiyvzwFMuNNS2p6PR2bsnljs5XrTHYh9BdSTZ/ITyxR9/i96KkzO4OFATk49lo9rVKhUPTZyGAKKR0ZxYDghop6e9hcE6vtg451kESiJDUfHcc3LCoLecFSobtVvkxNuu4ov0f xmiss@Reem"
  }
  os_disk {
    caching           = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
