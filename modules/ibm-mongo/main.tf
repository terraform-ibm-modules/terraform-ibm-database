###########################################################
# IBM Cloud `databases-for-mongodb` database provisioning
# Copyright 2020 IBM
###########################################################

resource "ibm_database" "mongodb" {
  resource_group_id                    = var.resource_group_id
  name                                 = var.name
  service                              = "databases-for-mongodb"
  plan                                 = var.plan
  location                             = var.location
  adminpassword                        = var.adminpassword
  version                              = var.database_version
  members_memory_allocation_mb         = var.members_memory_allocation_mb
  members_disk_allocation_mb           = var.members_disk_allocation_mb
  members_cpu_allocation_count         = var.members_cpu_allocation_count
  service_endpoints                    = var.service_endpoints
  backup_id                            = var.backup_id
  remote_leader_id                     = var.remote_leader_id
  key_protect_instance                 = var.key_protect_instance
  key_protect_key                      = var.key_protect_key
  backup_encryption_key_crn            = var.backup_encryption_key_crn
  tags                                 = var.tags
  point_in_time_recovery_deployment_id = var.point_in_time_recovery_deployment_id
  point_in_time_recovery_time          = var.point_in_time_recovery_time

  dynamic "users" {
    for_each = var.users
    content {
      name     = (users.value.name != "" ? users.value.name : null)
      password = (users.value.password != "" ? users.value.password : null)
    }
  }
  dynamic "whitelist" {
    for_each = var.whitelist
    content {
      address     = (whitelist.value.address != "" ? whitelist.value.address : null)
      description = (whitelist.value.description != "" ? whitelist.value.description : null)
    }
  }
  auto_scaling {
    cpu {
      rate_increase_percent       = var.cpu_rate_increase_percent
      rate_limit_count_per_member = var.cpu_rate_limit_count_per_member
      rate_period_seconds         = var.cpu_rate_period_seconds
      rate_units                  = var.cpu_rate_units
    }
    disk {
      capacity_enabled             = var.disk_capacity_enabled
      free_space_less_than_percent = var.disk_free_space_less_than_percent
      io_above_percent             = var.disk_io_above_percent
      io_enabled                   = var.disk_io_enabled
      io_over_period               = var.disk_io_over_period
      rate_increase_percent        = var.disk_rate_increase_percent
      rate_limit_mb_per_member     = var.disk_rate_limit_mb_per_member
      rate_period_seconds          = var.disk_rate_period_seconds
      rate_units                   = var.disk_rate_units
    }
    memory {
      io_above_percent         = var.memory_io_above_percent
      io_enabled               = var.memory_io_enabled
      io_over_period           = var.memory_io_over_period
      rate_increase_percent    = var.memory_rate_increase_percent
      rate_limit_mb_per_member = var.memory_rate_limit_mb_per_member
      rate_period_seconds      = var.memory_rate_period_seconds
      rate_units               = var.memory_rate_units
    }
  }
}