# Module database_rabbitmq

This module is used to provision  messages for Rabbitmq  Database on IBM Cloud Infrastructure.

## Example Usage
```
data "ibm_resource_group" "resource_group" {
  name = var.resource_group
}
module "database_simple-icd" {
  source            = "../../modules/rabbitmq"
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
| resource_group_id                     | Resource Group Id.                                                | string   | n/a     | yes      |
| service_name                          | Resource instance name for example, my Database instance.         | string   | n/a     | yes      |
| plan                                  | The plan type of the Database instance.                           | string   | standard| yes      |
| location                              | The location or the region in which Database instance exists.     | string   | n/a     | yes      |
| adminpassword                         |  The admin user password for the instance.                        | string   | n/a     | no       |
| database_version                      | The database version to provision if specified.                   | string   | n/a     | no       |
| memory_allocation                     | Memory allocation required for database.                          | number   | n/a     | no       |
| disk_allocation                       | Disk allocation required for database                             | number   | n/a     | no       |
| cpu_allocation                        | CPU allocation required for database.                             | number   | n/a     | no       |
| service_endpoints                     | Types of the service endpoints.                                   | string   | public  | no       |
| backup_id                             | The CRN of backup source database.                                | string   | n/a     | no       |
| remote_leader_id                      | The CRN of leader database.                                       | string   | n/a     | no       |
| kms_instance                          | The CRN of Key protect instance.                                  | string   | n/a     | no       |
| disk_encryption_key                   | The CRN of Key protect key                                        | string   | n/a     | no       |
| backup_encryption_key                 | backup_encryption_key_crn                                         | string   | n/a     | no       |
| tags                                  | Tags for the database                                             | set(str) | n/a     | no       |
| point_in_time_recovery_deployment_id  |The CRN of source instance.                                        | string   | n/a     | no       |
| point_in_time_recovery_time           | The point in time recovery time stamp of the deployed instance    | string   | n/a     | no       |
| users                                 | Database Users. It is set of username and passwords               | set(obj) | n/a     | no       |
| whitelist                             | Database Whitelist It is set of IP Address and description.       | set(obj) | n/a     | no       |
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

## Users Inputs
| Name                                 | Description           | Type   | Default | Required |
|--------------------------------------|-----------------------|--------|---------|----------|
| name                                 | Name Of the User      | string | n/a     | no       |
| password                             | User Password         | string | n/a     | no       |

## Whitelist Inputs

| Name                                    | Description                           | Type   | Default | Required |
|-----------------------------------------|---------------------------------------|--------|---------|----------|
| address                                 | Whitelist IP address in CIDR notation | string | n/a     | no       |
| description                             | Unique white list description         | string | n/a     | no       |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

### NOTE: To make use of a particular version of module, Set the `version` argument to respective module version.

NOTE:  We can configure the list of users, whitelist by entering respective details in input.tfvars.

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