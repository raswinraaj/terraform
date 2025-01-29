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
}

# This block configures the Azure Resource Manager provider.
provider "azurerm" {
  # Leave the features block empty as we don't use any specific features in this example.
  features {}
}

