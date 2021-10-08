terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
    backend "azurerm" {
        resource_group_name  = "tform-lemilie"
        storage_account_name = "briefoctober"
        container_name       = "contenerbriefoctober"
        key                  = "terraform.tfstate"
    }
}

# provider "azurerm" {
#   features {}
# }

# resource "azurerm_resource_group" "state-demo-secure" {
#   name     = "state-demo"
#   location = "francecentral"
# }