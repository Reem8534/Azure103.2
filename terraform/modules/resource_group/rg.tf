resource "azurerm_resource_group" "test" {
  name     = "Azuredevops"
  location = "southcentralus"  # match the existing RG
}
