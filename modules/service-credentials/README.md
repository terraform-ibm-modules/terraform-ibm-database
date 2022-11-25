# Creation of service credentials to an existing database instance

This example is used to create a service credentials to an existing database on IBM Cloud Infrastructure.

## Example Usage
```
provider "ibm" {
  region = var.ibm_region
}

data "ibm_resource_group" "resource_group" {
  name = var.resource_group != null ? var.resource_group : "default"
}

module "db_service_credentials" {
  source            = "../../modules/service-credentials"
  db_name           = var.db_name
  location          = var.location
  resource_group_id = data.ibm_resource_group.resource_group.id
  key_name          = var.key_name
  key_role          = var.key_role
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_ibm"></a> [ibm](#requirement\_ibm) | 1.41.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [ibm_resource_key.db_key](https://registry.terraform.io/providers/IBM-Cloud/ibm/1.41.1/docs/resources/resource_key) | resource |
| [ibm_database.db](https://registry.terraform.io/providers/IBM-Cloud/ibm/1.41.1/docs/data-sources/database) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | Name of an existing Database | `string` | n/a | yes |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Nam eof the Key instance to be created | `string` | n/a | yes |
| <a name="input_key_role"></a> [key\_role](#input\_key\_role) | Name of a user role. Valid roles are Writer, Reader, Manager, Administrator, Operator, Viewer, and Editor. | `string` | `"Viewer"` | no |
| <a name="input_location"></a> [location](#input\_location) | Location in which DB instance exists | `string` | `null` | no |
| <a name="input_resource_group_id"></a> [resource\_group\_id](#input\_resource\_group\_id) | ID of the resource group, DB instance belongs to | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_id"></a> [key\_id](#output\_key\_id) | The ID of the key |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Usage

```
terraform init
```
```
terraform plan
```
```
terraform apply
```
## Note

All optional fields are given value `null` in varaible.tf file. User can configure the same by overwriting with appropriate values.
