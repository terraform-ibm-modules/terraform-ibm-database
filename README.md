# IBM Database Terraform Module

This is a collection of modules that make it easier to provision database on IBM Cloud Platform:
* database_elasticsearch
* database_etcd
* database_mongo
* database_postgresql
* database_rabbitmq
* database_redis

## Compatibility

This module is meant for use with Terraform >= 0.13.

## Usage

Full examples are in the [examples](./examples/) folder, but basic usage is as follows for creation of database:

```hcl
provider "ibm" {
}
data "ibm_resource_group" "resource_group" {
  name = var.resource_group
}
module "database_rabbitmq" {
  source                               = "terraform-ibm-modules/database/ibm//modules/rabbitmq"
  resource_group_id                    = data.ibm_resource_group.resource_group.id
  name                                 = var.name
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
#### NOTE: To make use of a particular version of module, Set the `version` argument to respective module version.

## Requirements

### Terraform plugins

- [Terraform](https://www.terraform.io/downloads.html) >= 0.13
- [terraform-provider-ibm](https://github.com/IBM-Cloud/terraform-provider-ibm)

## Install

### Terraform

Be sure you have the correct Terraform version (>= 0.13), you can choose the binary here:
- https://releases.hashicorp.com/terraform/

### Terraform plugins

Be sure you have the compiled plugins on $HOME/.terraform.d/plugins/

- [terraform-provider-ibm](https://github.com/IBM-Cloud/terraform-provider-ibm)

## How to input varaible values through a file

To review the plan for the configuration defined (no resources actually provisioned)

`terraform plan -var-file=./input.tfvars`

To execute and start building the configuration defined in the plan (provisions resources)

`terraform apply -var-file=./input.tfvars`

To destroy the Database resources

`terraform destroy -var-file=./input.tfvars`

All optional parameters by default will be set to null in respective example's varaible.tf file. If user wants to configure any optional paramter he has overwrite the default value.

## Note

All optional fields should be given value `null` in respective resource varaible.tf file. User can configure the same by overwriting with appropriate values.

### Pre-commit Hooks

Run the following command to execute the pre-commit hooks defined in `.pre-commit-config.yaml` file

  `pre-commit run -a`

We can install pre-coomit tool using

  `pip install pre-commit`
## References

[IBM-Cloud Elastic Search Database docs](https://cloud.ibm.com/docs/databases-for-elasticsearch?topic=databases-for-elasticsearch-getting-started)

[IBM-Cloud Etcd Database docs](https://cloud.ibm.com/docs/databases-for-etcd?topic=databases-for-etcd-getting-started)

[IBM-Cloud Mongo Database docs](https://cloud.ibm.com/docs/databases-for-mongodb?topic=databases-for-mongodb-getting-started)

[IBM-Cloud Postgresql Database docs](https://cloud.ibm.com/docs/databases-for-postgresql?topic=databases-for-postgresql-getting-started)

[IBM-Cloud Messages for Rabbitmq Database docs](https://cloud.ibm.com/docs/messages-for-rabbitmq?topic=messages-for-rabbitmq-getting-started)

[IBM-Cloud Redis Database docs](https://cloud.ibm.com/docs/databases-for-redis?topic=databases-for-redis-getting-started)
