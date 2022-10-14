#===================================================================================================
#      FILE NAME: variables.tf
#      USAGE: Specifies required variables for the data blocks and modules specified in main.tf
#      VERSION: 1.0
#      AUTHOR: Sahana Gajanana Acharya
#      DEPARTMENT: Platform Team
#===================================================================================================

variable "rgroup" {
  type        = string
  description = "resource group"
}
