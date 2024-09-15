
# Terraform Resource Group Creation

This folder contains a simple Terraform configuration to create a resource group in your cloud provider.

## Prerequisites

-   Install Terraform
-   Set up your cloud provider credentials (e.g., Azure, AWS)

## How to Use

1.  **Initialize Terraform**:
    
    `terraform init` 
    
2.  **Preview the configuration**:
    
    `terraform plan` 
    
3.  **Apply the configuration** to create the resource group:
    
    `terraform apply` 
    
4.  **Destroy the resource group** (if needed):
    
    `terraform destroy` 
    

## Variables

-   `resource_group_name`: Name of the resource group.
-   `location`: Cloud region where the resource group will be created.

## Example

To customize the resource group, modify the `main.tf` file with your preferred `resource_group_name` and `location`.