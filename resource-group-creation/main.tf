# Define the Terraform block, which specifies the required providers and their versions
terraform {
  required_providers {
    # Specify the provider for Azure Resource Manager
    azurerm = {
      # Source indicates the provider's repository
      source  = "hashicorp/azurerm"
      # Version specifies the version of the provider to use
      version = "2.92.0"
    }
  }
}

# Configure the Azure Resource Manager provider
provider "azurerm" {
  # The features block is required but can be left empty for default settings
  features {}
}

# Define a resource block to create an Azure Resource Group
resource "azurerm_resource_group" "app_grp" {
  # Name of the resource group
  name     = "pushpak-resource-terraform"
  # Location specifies the Azure region where the resource group will be created
  location = "North Europe"
}
