# parameter-repo-name

This is the foundational infrastructure repo for the applicaiton. It sets up all the foundational infrastructure, including the following:
* Foundational resource group
* Application resource groups
* Virtual network
* Network Security Groups
* Application Security Groups
* Key Vault
* Log Analytics Workspace
* Managed Identities
* Action Groups
* Foundational storage account

<!-- BEGIN_TF_DOCS -->


<!-- markdownlint-disable MD033 -->
## Requirements

No requirements.

## Resources

No resources.

<!-- markdownlint-disable MD013 -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_MF_aad_client_id"></a> [MF\_aad\_client\_id](#input\_MF\_aad\_client\_id) | n/a | `string` | n/a | yes |
| <a name="input_MF_aad_client_secret"></a> [MF\_aad\_client\_secret](#input\_MF\_aad\_client\_secret) | n/a | `string` | n/a | yes |
| <a name="input_MF_add_subscription_id"></a> [MF\_add\_subscription\_id](#input\_MF\_add\_subscription\_id) | n/a | `string` | n/a | yes |
| <a name="input_MF_tenant_id"></a> [MF\_tenant\_id](#input\_MF\_tenant\_id) | # Connectivity | `string` | n/a | yes |
| <a name="input_app_code"></a> [app\_code](#input\_app\_code) | AppCode for the application, used for tagging and identification purposes | `string` | n/a | yes |
| <a name="input_core_infrastructure_subscription_id"></a> [core\_infrastructure\_subscription\_id](#input\_core\_infrastructure\_subscription\_id) | n/a | `string` | n/a | yes |
| <a name="input_default_routes"></a> [default\_routes](#input\_default\_routes) | n/a | `map(any)` | n/a | yes |
| <a name="input_metadata_db_host_fqdn"></a> [metadata\_db\_host\_fqdn](#input\_metadata\_db\_host\_fqdn) | Fully qualified domain name of the metadata SQL Server database | `string` | n/a | yes |
| <a name="input_metadata_db_password"></a> [metadata\_db\_password](#input\_metadata\_db\_password) | Password to connect to the Metadata SQL Server database | `string` | n/a | yes |
| <a name="input_metadata_db_username"></a> [metadata\_db\_username](#input\_metadata\_db\_username) | Username to connect to the Metadata SQL Server database | `string` | n/a | yes |
| <a name="input_security_rules"></a> [security\_rules](#input\_security\_rules) | n/a | `map(any)` | n/a | yes |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | n/a | `string` | n/a | yes |
| <a name="input_metadata_db_port"></a> [metadata\_db\_port](#input\_metadata\_db\_port) | SQL Server port where the Metadata database server is running | `number` | `1433` | no |

## Outputs

No outputs.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_alz"></a> [alz](#module\_alz) | app.terraform.io/Mccain_Foods/azure-application-landing-zone/platform | parameter-app-landing-zone-module-version |


<!-- END_TF_DOCS -->