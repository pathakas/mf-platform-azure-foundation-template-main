terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      configuration_aliases = [
        azurerm.azurerm_application_provider,
        azurerm.azurerm_core_infrastructure_provider,
      ]
    }
    azuread = {
      source = "hashicorp/azuread"
    }
    sql = {
      source                = "registry.terraform.io/paultyng/sql"
      configuration_aliases = [sql.mssql]
    }
    mssql = {
      source = "registry.terraform.io/PGSSoft/mssql"
    }
  }
}

provider "azurerm" {
  alias           = "azurerm_application_provider"
  subscription_id = var.MF_add_subscription_id
  features {}
  resource_provider_registrations = "none"
}

provider "azurerm" {
  alias           = "azurerm_core_infrastructure_provider"
  subscription_id = var.core_infrastructure_subscription_id
  features {}
  resource_provider_registrations = "none"
}

provider "azuread" {
  client_id     = var.MF_aad_client_id
  client_secret = var.MF_aad_client_secret
  tenant_id     = var.MF_tenant_id
}

provider "mssql" {
  hostname = var.metadata_db_host_fqdn
  port     = var.metadata_db_port

  sql_auth = {
    username = var.metadata_db_username
    password = var.metadata_db_password
  }
}