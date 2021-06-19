provider "azurerm" {
  features {}


}

resource "azurerm_resource_group" "k8srg" {
  name     = var.test_var
  location = "West Europe"

}

terraform {
  required_providers {
    azuredevops = {
      source = "microsoft/azuredevops"
      version = ">=0.1.4"
    }
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=2.63.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.0"
    }
    
  }
}

terraform {
   backend "azurerm" {}
}

variable "test_var" {
  default = "vars11"
}

