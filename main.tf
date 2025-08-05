module "alz" {
  providers = {
    azurerm.azurerm_application_provider         = azurerm.azurerm_application_provider
    azurerm.azurerm_core_infrastructure_provider = azurerm.azurerm_core_infrastructure_provider
    azuread                                      = azuread
    mssql                                        = mssql
  }
  source               = "app.terraform.io/Mccain_Foods/azure-application-landing-zone/platform"
  version              = "parameter-app-landing-zone-module-version"
  app_code             = var.app_code
  subscription_id      = var.subscription_id
  route_table_routes   = var.default_routes
  security_rules       = var.security_rules
  MF_aad_client_id     = var.MF_aad_client_id
  MF_aad_client_secret = var.MF_aad_client_secret
  MF_tenant_id         = var.MF_tenant_id
}