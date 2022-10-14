#===============================================================================
#      FILE NAME: output.tf
#      USAGE: To output required values
#      VERSION: 1.0
#      AUTHOR: Sahana Gajanana Acharya
#      DEPARTMENT: Platform Team
#===============================================================================

output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}
