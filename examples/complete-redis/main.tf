###########################################################
# IBM Cloud `databases-for-redis` database provisioning
# Copyright 2020 IBM
###########################################################

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
