# Simple Database

This example is used to provision  simple `databases for elasticsearch`  Database on IBM Cloud Infrastructure.

## Example Usage
```
data "ibm_resource_group" "resource_group" {
  name = var.resource_group
}
module "database_simple-elasticsearch" {
  source            = "../../modules/elasticsearch"
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
## Inputs

| Name                                  | Description                                                       | Type     | Default | Required |
|---------------------------------------|-------------------------------------------------------------------|----------|---------|----------|
| resource_group                        | Resource Group Name.                                              | string   | n/a     | yes      |
| location                              | The location or the region in which Database instance exists.     | string   | n/a     | yes      |
| plan                                  | The plan type of the Database instance.                           | string   | standard| yes      |
| service_name                          | Resource instance name for example, my Database instance.         | string   | n/a     | yes      |
| tags                                  | Tags for the database                                             | set(str) | n/a     | no       |
| memory_allocation                     | Memory allocation required for database.                          | number   | n/a     | no       |
| disk_allocation                       | Disk allocation required for database                             | number   | n/a     | no       |
| cpu_allocation                        | CPU allocation required for database.                             | number   | n/a     | no       |
| database_version                      | The database version to provision if specified.                   | string   | n/a     | no       |
| service_endpoints                     | Types of the service endpoints.                                   | string   | public  | no       |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

NOTE: We can configure the list of users, whitelist by entering respective details in input.tfvars.

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

* If the following attributes `database_version`,`memory_allocation`,`disk_allocation`,`cpu_allocation` are provided with null values, then API will create a database with the default values. These default values which are provided by API may differ and are not maintained by terraform.