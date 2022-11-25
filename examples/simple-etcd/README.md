# Simple Database

This example is used to provision  simple `databases for elasticsearch`  Database on IBM Cloud Infrastructure.

## Example Usage
```
data "ibm_resource_group" "resource_group" {
  name = var.resource_group
}
module "database_simple_etcd" {
  source            = "../../modules/etcd"
  location          = var.location
  plan              = var.plan
  service_name      = var.service_name
  resource_group_id = data.ibm_resource_group.resource_group.id
  tags              = var.tags
  memory_allocation = var.memory_allocation
  disk_allocation   = var.disk_allocation
  cpu_allocation    = var.cpu_allocation
  database_version  = var.database_version
  service_endpoints = var.service_endpoints
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
| <a name="module_database_simple_etcd"></a> [database\_simple\_etcd](#module\_database\_simple\_etcd) | ../../modules/etcd | n/a |

## Resources

| Name | Type |
|------|------|
| [ibm_resource_group.resource_group](https://registry.terraform.io/providers/IBM-Cloud/ibm/1.41.1/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cpu_allocation"></a> [cpu\_allocation](#input\_cpu\_allocation) | CPU allocation required for database | `number` | `null` | no |
| <a name="input_database_version"></a> [database\_version](#input\_database\_version) | The database version to provision if specified | `string` | `null` | no |
| <a name="input_disk_allocation"></a> [disk\_allocation](#input\_disk\_allocation) | Disk allocation required for database | `number` | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | The location or the region in which Database instance exists | `string` | n/a | yes |
| <a name="input_memory_allocation"></a> [memory\_allocation](#input\_memory\_allocation) | Memory allocation required for database | `number` | `null` | no |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | Resource Group Name | `string` | n/a | yes |
| <a name="input_service_endpoints"></a> [service\_endpoints](#input\_service\_endpoints) | Types of the service endpoints. Possible values are 'public', 'private', 'public-and-private'. | `string` | `null` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Resource instance name for example, my Database instance | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for the database | `set(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_simple_etcd"></a> [simple\_etcd](#output\_simple\_etcd) | simple etcd |
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
