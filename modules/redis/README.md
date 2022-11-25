# Module database_redis

This module is used to provision  databases for Redis  Database on IBM Cloud Infrastructure.

## Example Usage
```
data "ibm_resource_group" "resource_group" {
  name = var.resource_group
}
module "database_redis" {
  source                               = "../../modules/redis"
  resource_group_id                    = data.ibm_resource_group.resource_group.id
  service_name                         = var.name
  plan                                 = var.plan
  location                             = var.location
  adminpassword                        = var.adminpassword
  database_version                     = var.database_version
  memory_allocation                    = var.memory_allocation
  disk_allocation                      = var.disk_allocation
  cpu_allocation                       = var.cpu_allocation
  service_endpoints                    = var.service_endpoints
  backup_id                            = var.backup_id
  remote_leader_id                     = var.remote_leader_id
  kms_instance                         = var.kms_instance
  disk_encryption_key                  = var.disk_encryption_key
  backup_encryption_key                = var.backup_encryption_key
  tags                                 = var.tags
  point_in_time_recovery_deployment_id = var.point_in_time_recovery_deployment_id
  point_in_time_recovery_time          = var.point_in_time_recovery_time
  users                                = var.users
  whitelist                            = var.whitelist
  cpu_rate_increase_percent            = var.cpu_rate_increase_percent
  cpu_rate_limit_count_per_member      = var.cpu_rate_limit_count_per_member
  cpu_rate_period_seconds              = var.cpu_rate_period_seconds
  cpu_rate_units                       = var.cpu_rate_units
  disk_capacity_enabled                = var.disk_capacity_enabled
  disk_free_space_less_than_percent    = var.disk_free_space_less_than_percent
  disk_io_above_percent                = var.disk_io_above_percent
  disk_io_enabled                      = var.disk_io_enabled
  disk_io_over_period                  = var.disk_io_over_period
  disk_rate_increase_percent           = var.disk_rate_increase_percent
  disk_rate_limit_mb_per_member        = var.disk_rate_limit_mb_per_member
  disk_rate_period_seconds             = var.disk_rate_period_seconds
  disk_rate_units                      = var.disk_rate_units
  memory_io_above_percent              = var.memory_io_above_percent
  memory_io_enabled                    = var.memory_io_enabled
  memory_io_over_period                = var.memory_io_over_period
  memory_rate_increase_percent         = var.memory_rate_increase_percent
  memory_rate_limit_mb_per_member      = var.memory_rate_limit_mb_per_member
  memory_rate_period_seconds           = var.memory_rate_period_seconds
  memory_rate_units                    = var.memory_rate_units
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
| [ibm_database.redis](https://registry.terraform.io/providers/IBM-Cloud/ibm/1.41.1/docs/resources/database) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_adminpassword"></a> [adminpassword](#input\_adminpassword) | The admin user password for the instance | `string` | `null` | no |
| <a name="input_backup_encryption_key"></a> [backup\_encryption\_key](#input\_backup\_encryption\_key) | The Backup Encryption Key CRN | `string` | `null` | no |
| <a name="input_backup_id"></a> [backup\_id](#input\_backup\_id) | The CRN of backup source database | `string` | `null` | no |
| <a name="input_cpu_allocation"></a> [cpu\_allocation](#input\_cpu\_allocation) | CPU allocation required for database | `number` | `null` | no |
| <a name="input_cpu_rate_increase_percent"></a> [cpu\_rate\_increase\_percent](#input\_cpu\_rate\_increase\_percent) | Auto Scaling CPU Rate: Increase Percent | `number` | `null` | no |
| <a name="input_cpu_rate_limit_count_per_member"></a> [cpu\_rate\_limit\_count\_per\_member](#input\_cpu\_rate\_limit\_count\_per\_member) | Auto Scaling CPU Rate: Limit count per number | `number` | `null` | no |
| <a name="input_cpu_rate_period_seconds"></a> [cpu\_rate\_period\_seconds](#input\_cpu\_rate\_period\_seconds) | Auto Scaling CPU Rate: Period Seconds | `number` | `null` | no |
| <a name="input_cpu_rate_units"></a> [cpu\_rate\_units](#input\_cpu\_rate\_units) | Auto Scaling CPU Rate: Units | `string` | `null` | no |
| <a name="input_database_version"></a> [database\_version](#input\_database\_version) | The database version to provision if specified | `string` | `null` | no |
| <a name="input_disk_allocation"></a> [disk\_allocation](#input\_disk\_allocation) | Disk allocation required for database | `number` | `null` | no |
| <a name="input_disk_capacity_enabled"></a> [disk\_capacity\_enabled](#input\_disk\_capacity\_enabled) | Auto Scaling Disk Scalar: Capacity Enabled | `bool` | `null` | no |
| <a name="input_disk_encryption_key"></a> [disk\_encryption\_key](#input\_disk\_encryption\_key) | The CRN of Key protect key | `string` | `null` | no |
| <a name="input_disk_free_space_less_than_percent"></a> [disk\_free\_space\_less\_than\_percent](#input\_disk\_free\_space\_less\_than\_percent) | Auto Scaling Disk Scalar: Capacity Free Space Less Than Percent | `number` | `null` | no |
| <a name="input_disk_io_above_percent"></a> [disk\_io\_above\_percent](#input\_disk\_io\_above\_percent) | Auto Scaling Disk Scalar: IO Utilization Above Percent | `number` | `null` | no |
| <a name="input_disk_io_enabled"></a> [disk\_io\_enabled](#input\_disk\_io\_enabled) | Auto Scaling Disk Scalar: IO Utilization Enabled | `bool` | `null` | no |
| <a name="input_disk_io_over_period"></a> [disk\_io\_over\_period](#input\_disk\_io\_over\_period) | Auto Scaling Disk Scalar: IO Utilization Over Period | `string` | `null` | no |
| <a name="input_disk_rate_increase_percent"></a> [disk\_rate\_increase\_percent](#input\_disk\_rate\_increase\_percent) | Auto Scaling Disk Rate: Increase Percent | `number` | `null` | no |
| <a name="input_disk_rate_limit_mb_per_member"></a> [disk\_rate\_limit\_mb\_per\_member](#input\_disk\_rate\_limit\_mb\_per\_member) | Auto Scaling Disk Rate: Limit mb per member | `number` | `null` | no |
| <a name="input_disk_rate_period_seconds"></a> [disk\_rate\_period\_seconds](#input\_disk\_rate\_period\_seconds) | Auto Scaling Disk Rate: Period Seconds | `number` | `null` | no |
| <a name="input_disk_rate_units"></a> [disk\_rate\_units](#input\_disk\_rate\_units) | Auto Scaling Disk Rate: Units | `string` | `null` | no |
| <a name="input_kms_instance"></a> [kms\_instance](#input\_kms\_instance) | The CRN of Key protect instance | `string` | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | The location or the region in which Database instance exists | `string` | n/a | yes |
| <a name="input_memory_allocation"></a> [memory\_allocation](#input\_memory\_allocation) | Memory allocation required for database | `number` | `null` | no |
| <a name="input_memory_io_above_percent"></a> [memory\_io\_above\_percent](#input\_memory\_io\_above\_percent) | Auto Scaling Memory Scalar: IO Utilization Above Percent | `number` | `null` | no |
| <a name="input_memory_io_enabled"></a> [memory\_io\_enabled](#input\_memory\_io\_enabled) | Auto Scaling Memory Scalar: IO Utilization Enabled | `bool` | `null` | no |
| <a name="input_memory_io_over_period"></a> [memory\_io\_over\_period](#input\_memory\_io\_over\_period) | Auto Scaling Memory Scalar: IO Utilization Over Period | `number` | `null` | no |
| <a name="input_memory_rate_increase_percent"></a> [memory\_rate\_increase\_percent](#input\_memory\_rate\_increase\_percent) | Auto Scaling Memory Rate: Increase Percent | `number` | `null` | no |
| <a name="input_memory_rate_limit_mb_per_member"></a> [memory\_rate\_limit\_mb\_per\_member](#input\_memory\_rate\_limit\_mb\_per\_member) | Auto Scaling Memory Rate: Limit mb per member | `number` | `null` | no |
| <a name="input_memory_rate_period_seconds"></a> [memory\_rate\_period\_seconds](#input\_memory\_rate\_period\_seconds) | Auto Scaling Memory Rate: Period Seconds | `number` | `null` | no |
| <a name="input_memory_rate_units"></a> [memory\_rate\_units](#input\_memory\_rate\_units) | Auto Scaling Memory Rate: Units | `string` | `null` | no |
| <a name="input_plan"></a> [plan](#input\_plan) | The plan type of the Database instance | `string` | n/a | yes |
| <a name="input_point_in_time_recovery_deployment_id"></a> [point\_in\_time\_recovery\_deployment\_id](#input\_point\_in\_time\_recovery\_deployment\_id) | The CRN of source instance | `string` | `null` | no |
| <a name="input_point_in_time_recovery_time"></a> [point\_in\_time\_recovery\_time](#input\_point\_in\_time\_recovery\_time) | The point in time recovery time stamp of the deployed instance | `string` | `null` | no |
| <a name="input_remote_leader_id"></a> [remote\_leader\_id](#input\_remote\_leader\_id) | The CRN of leader database | `string` | `null` | no |
| <a name="input_resource_group_id"></a> [resource\_group\_id](#input\_resource\_group\_id) | Resource Group ID | `string` | n/a | yes |
| <a name="input_service_endpoints"></a> [service\_endpoints](#input\_service\_endpoints) | Types of the service endpoints. Possible values are 'public', 'private', 'public-and-private'. | `string` | `null` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Resource instance name for example, my Database instance | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for the database | `set(string)` | `null` | no |
| <a name="input_users"></a> [users](#input\_users) | Database Users. It is set of username and passwords | `set(map(string))` | `null` | no |
| <a name="input_whitelist"></a> [whitelist](#input\_whitelist) | Database Whitelist It is set of IP Address and description | `set(map(string))` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_redis"></a> [redis](#output\_redis) | simple redis |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## Usage

```
terraform init
```
```
terraform plan -var-file="input.tfvars"
```
```
terraform apply -var-file="input.tfvars"
```
