# This block defines the required providers and their versions.
terraform {
  required_version = ">= 1.10.0"
  required_providers {
    # Specify Azure Resource Manager provider
    azurerm = {
      # Use the official HashiCorp azurerm provider
      source  = "hashicorp/azurerm"
      # Specify a version range for the provider
      version = ">= 4.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatestorage123"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

# This block configures the Azure Resource Manager provider.
provider "azurerm" {
  
  # Leave the features block empty as we don't use any specific features in this example.
  features {}
}

