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
  name = "pushpak-resource-terraform"
  # Location specifies the Azure region where the resource group will be created
  location = "North Europe"
}

# This block creates an Azure Storage Account resource.
resource "azurerm_storage_account" "storage_account" {
  # The unique name of the storage account. It must be globally unique and should be between 3 and 24 characters.
  name = "pushpakstorage12345"
  
  # The name of the resource group where this storage account will reside.
  resource_group_name = azurerm_resource_group.app_grp.name
  
  # The Azure region where the storage account will be created.
  location = "North Europe"
  
  # The performance tier of the storage account. Standard is for general-purpose storage.
  account_tier = "Standard"
  
  # The replication strategy for the storage account. LRS (Locally Redundant Storage) replicates data within a single region.
  account_replication_type = "LRS"

  # Allow public access to blobs in the storage account
  allow_blob_public_access = true
}
