# Module ibm-elasticsearch

This example is used to provision  databases for elasticsearch  Database on IBM Cloud Infrastructure.

## Example Usage
```
provider "ibm" {
}

data "ibm_resource_group" "resource_group" {
  name = var.resource_group
}
module "ibm-elasticsearch" {
  source                               = "terraform-ibm-modules/database/ibm//modules/ibm-elasticsearch"
  resource_group_id                    = data.ibm_resource_group.resource_group.id
  name                                 = var.name
  plan                                 = var.plan
  location                             = var.location
  adminpassword                        = (var.adminpassword != null ? var.adminpassword : null)
  database_version                     = (var.database_version != null ? var.database_version : null)
  members_memory_allocation_mb         = (var.members_memory_allocation_mb != null ? var.members_memory_allocation_mb : null)
  members_disk_allocation_mb           = (var.members_disk_allocation_mb != null ? var.members_disk_allocation_mb : null)
  members_cpu_allocation_count         = (var.members_cpu_allocation_count != null ? var.members_cpu_allocation_count : null)
  service_endpoints                    = (var.service_endpoints != null ? var.service_endpoints : "public")
  backup_id                            = (var.backup_id != null ? var.backup_id : null)
  remote_leader_id                     = (var.remote_leader_id != null ? var.remote_leader_id : null)
  key_protect_instance                 = (var.key_protect_instance != null ? var.key_protect_instance : null)
  key_protect_key                      = (var.key_protect_key != null ? var.key_protect_key : null)
  backup_encryption_key_crn            = (var.backup_encryption_key_crn != null ? var.backup_encryption_key_crn : null)
  tags                                 = (var.tags != null ? var.tags : [])
  point_in_time_recovery_deployment_id = (var.point_in_time_recovery_deployment_id != null ? var.point_in_time_recovery_deployment_id : null)
  point_in_time_recovery_time          = (var.point_in_time_recovery_time != null ? var.point_in_time_recovery_time : null)
  users                                = (var.users != null ? var.users : [])
  whitelist                            = (var.whitelist != null ? var.whitelist : [])
  cpu_rate_increase_percent            = (var.cpu_rate_increase_percent != null ? var.cpu_rate_increase_percent : null)
  cpu_rate_limit_count_per_member      = (var.cpu_rate_limit_count_per_member != null ? var.cpu_rate_limit_count_per_member : null)
  cpu_rate_period_seconds              = (var.cpu_rate_period_seconds != null ? var.cpu_rate_period_seconds : null)
  cpu_rate_units                       = (var.cpu_rate_units != null ? var.cpu_rate_units : null)
  disk_capacity_enabled                = (var.disk_capacity_enabled != null ? var.disk_capacity_enabled : null)
  disk_free_space_less_than_percent    = (var.disk_free_space_less_than_percent != null ? var.disk_free_space_less_than_percent : null)
  disk_io_above_percent                = (var.disk_io_above_percent != null ? var.disk_io_above_percent : null)
  disk_io_enabled                      = (var.disk_io_enabled != null ? var.disk_io_enabled : null)
  disk_io_over_period                  = (var.disk_io_over_period != null ? var.disk_io_over_period : null)
  disk_rate_increase_percent           = (var.disk_rate_increase_percent != null ? var.disk_rate_increase_percent : null)
  disk_rate_limit_mb_per_member        = (var.disk_rate_limit_mb_per_member != null ? var.disk_rate_limit_mb_per_member : null)
  disk_rate_period_seconds             = (var.disk_rate_period_seconds != null ? var.disk_rate_period_seconds : null)
  disk_rate_units                      = (var.disk_rate_units != null ? var.disk_rate_units : null)
  memory_io_above_percent              = (var.memory_io_above_percent != null ? var.memory_io_above_percent : null)
  memory_io_enabled                    = (var.memory_io_enabled != null ? var.memory_io_enabled : null)
  memory_io_over_period                = (var.memory_io_over_period != null ? var.memory_io_over_period : null)
  memory_rate_increase_percent         = (var.memory_rate_increase_percent != null ? var.memory_rate_increase_percent : null)
  memory_rate_limit_mb_per_member      = (var.memory_rate_limit_mb_per_member != null ? var.memory_rate_limit_mb_per_member : null)
  memory_rate_period_seconds           = (var.memory_rate_period_seconds != null ? var.memory_rate_period_seconds : null)
  memory_rate_units                    = (var.memory_rate_units != null ? var.memory_rate_units : null)
}

```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name                                  | Description                                                       | Type     | Default | Required |
|---------------------------------------|-------------------------------------------------------------------|----------|---------|----------|
| resource_group                        | Resource Group Name.                                              | string   | n/a     | yes      |
| name                                  | Resource instance name for example, my Database instance.         | string   | n/a     | yes      |
| plan                                  | The plan type of the Database instance.                           | string   | standard| yes      |
| location                              | The location or the region in which Database instance exists.     | string   | n/a     | yes      |
| adminpassword                         |  The admin user password for the instance.                        | string   | n/a     | no       |
| database_version                      | The database version to provision if specified.                   | string   | n/a     | no       |
| members_memory_allocation_mb          | Memory allocation required for cluster.                           | number   | n/a     | no       |
| members_disk_allocation_mb            | Disk allocation required for cluster                              | number   | n/a     | no       |
| members_cpu_allocation_count          | CPU allocation required for cluster.                              | number   | n/a     | no       |
| service_endpoints                     | Types of the service endpoints.                                   | string   | public  | no       | 
| backup_id                             | The CRN of backup source database.                                | string   | n/a     | no       |
| remote_leader_id                      | The CRN of leader database.                                       | string   | n/a     | no       |
| key_protect_instance                  | The CRN of Key protect instance.                                  | string   | n/a     | no       |
| key_protect_key                       | The CRN of Key protect key                                        | string   | n/a     | no       |
| backup_encryption_key_crn             | backup_encryption_key_crn                                         | string   | n/a     | no       |
| tags                                  | Tags for the database                                             | set      | n/a     | no       |
| point_in_time_recovery_deployment_id  |The CRN of source instance.                                        | string   | n/a     | no       |
| point_in_time_recovery_time           | The point in time recovery time stamp of the deployed instance    | string   | n/a     | no       |
| users                                 | Database Users. It is set of username and passwords               | list     | n/a     | no       |
| whitelist                             | Database Whitelist It is set of IP Address and description.       | list     | n/a     | no       |
| cpu_rate_increase_percent             | Auto Scaling CPU Rate: Increase Percent                           | number   | n/a     | no       |
| cpu_rate_limit_count_per_member       | Auto Scaling CPU Rate: Limit count per number.                    | number   | n/a     | no       |
| cpu_rate_period_seconds               | Auto Scaling CPU Rate: Period Seconds                             | number   | n/a     | no       |
| cpu_rate_units                        | Auto Scaling CPU Rate: Units.                                     | string   | n/a     | no       |
| disk_capacity_enabled                 | Auto Scaling Disk Scalar: Capacity Enabled.                       | bool     | n/a     | no       |
| disk_free_space_less_than_percent     | Auto Scaling Disk Scalar: Capacity Free Space Less Than Percent   | number   | n/a     | no       |
| disk_io_above_percent                 | Auto Scaling Disk Scalar: IO Utilization Above Percent.           | number   | n/a     | no       |
| disk_io_enabled                       | Auto Scaling Disk Scalar: IO Utilization Enabled.                 | bool     | n/a     | no       |
| disk_io_over_period                   | Auto Scaling Disk Scalar: IO Utilization Over Period              | string   | n/a     | no       |
| disk_rate_increase_percent            | Auto Scaling Disk Rate: Increase Percent                          | number   | n/a     | no       |
| disk_rate_limit_mb_per_member         | Auto Scaling Disk Rate: Limit mb per member                       | number   | n/a     | no       |
| disk_rate_period_seconds              | Auto Scaling Disk Rate: Period Seconds                            | number   | n/a     | no       |
| disk_rate_units                       | Auto Scaling Disk Disk: Units.                                    | string   | n/a     | no       |
| memory_io_above_percent               | Auto Scaling Memory Scalar: IO Utilization Above Percent.         | number   | n/a     | no       |
| memory_io_enabled                     | Auto Scaling Memory Scalar: IO Utilization Enabled.               | bool     | n/a     | no       |
| memory_io_over_period                 | Auto Scaling Memory Scalar: IO Utilization Over Period            | string   | n/a     | no       |
| memory_rate_increase_percent          | Auto Scaling Memory Rate: Increase Percent                        | number   | n/a     | no       |
| memory_rate_limit_mb_per_member       | Auto Scaling Memory Rate: Limit mb per member                     | number   | n/a     | no       |
| memory_rate_period_seconds            | Auto Scaling Memory Rate: Period Seconds.                         | number   | n/a     | no       |
| memory_rate_units                     | Auto Scaling Memory Rate: Units.                                  | string   | n/a     | no       |


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

NOTE: We can configure the list of users, whitelist by entering respective details in input.tfvars.

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
## Note

All optional fields are given value `null` in varaible.tf file. User can configure the same by overwriting with appropriate values.
