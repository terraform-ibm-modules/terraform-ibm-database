# Creation of service credentials to an existing database instance

This example is used to create a service credentials to an existing database on IBM Cloud Infrastructure.

## Example Usage
```
provider "ibm" {

}

module "db_service_credentials" {
  source           = "../../modules/service-credentials"
  db_name          = var.db_name
  key_name         = var.key_name
  key_role         = var.key_role
  key_tags         = var.key_tags
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_ibm"></a> [ibm](#requirement\_ibm) | 1.41.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_db_service_credentials"></a> [db\_service\_credentials](#module\_db\_service\_credentials) | ../../modules/service-credentials | n/a |

## Resources

| Name | Type |
|------|------|
| [ibm_resource_group.resource_group](https://registry.terraform.io/providers/IBM-Cloud/ibm/1.41.1/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | Name of an existing Database | `string` | n/a | yes |
| <a name="input_ibm_region"></a> [ibm\_region](#input\_ibm\_region) | IBM Provider level region | `string` | `"us-south"` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Name of the Key instance to be created | `string` | n/a | yes |
| <a name="input_key_role"></a> [key\_role](#input\_key\_role) | Name of a user role. Valid roles are Viewer, Administrator, Operator, Editor. | `string` | `"Viewer"` | no |
| <a name="input_location"></a> [location](#input\_location) | Location in which DB instance exists | `string` | `null` | no |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | Name of the resource group, DB instance belongs to | `string` | `null` | no |

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

## NOTE

* If the following attributes `database_version`,`memory_allocation`,`disk_allocation`,`cpu_allocation` are provided with null values, then API will create a database with the default values. These default values which are provided by API may differ and are not maintained by terraform.
