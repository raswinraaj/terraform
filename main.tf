resource "azurerm_resource_group" "demo" {
  name     = "demo-rg-terraform"
  location = var.location
  tags = {
    environment = "demo"
  }
}