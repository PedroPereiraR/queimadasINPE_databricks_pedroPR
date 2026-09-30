terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
    databricks = {
      source  = "databricks/databricks"
      version = "~> 1.83"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-tfstate-rm561520"
    storage_account_name = "sttfstaterm561520"
    container_name       = "tfstate"
    key                  = "monitor-queimadas.tfstate"
  }
}

provider "azurerm" {
  features {}
}
