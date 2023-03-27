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
      version = "=3.0.0"
    }
  }
}

#====================================================================================
#Configure Azure Resource Manager Provider
#====================================================================================
provider "azurerm" {
  features {}
}

#====================================================================================
# Configure Terraform Backend
#====================================================================================
terraform {
  backend "azurerm" {}
}
  
# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "sample-rg-test"
  location = "West Europe"
}
