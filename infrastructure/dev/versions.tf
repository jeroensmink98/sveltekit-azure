terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }

  backend "azurerm" {
    resource_group_name   = "rg-terraform-state"
    storage_account_name  = "saterraformstate83721"
    container_name        = "sc-terraform-state"
    key                   = "sveltekit-azure/terraform.tfstate"
  }
}



provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}