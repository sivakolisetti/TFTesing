#==========================================================================================================================
#      FILE NAME: main.tf
#      USAGE: Defines required terraform,provider,data blocks and modules to create storage account and private endpoint
#      VERSION: 1.0
#      AUTHOR: Sahana Gajanana Acharya
#      DEPARTMENT: Platform Team
#===========================================================================================================================

#===================================================================================
#Configure terraform block to specify required versions
#===================================================================================
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.60"
    }
  }
}
#====================================================================================
# Configure Terraform Backend
#====================================================================================
terraform {
  backend "azurerm" {
    resource_group_name  = "myPackergroup"
    storage_account_name = "sample045696"
    container_name       = "tfstate"
    key                  = "dev.tfstate"
  }
}
#====================================================================================
#Configure Azure Resource Manager Provider
#====================================================================================
provider "azurerm" {
  features {}
}
# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "var.rgroup"
  location = "West Europe"
}
