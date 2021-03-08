###########################################################
# IBM Cloud simple database provisioning
# Copyright 2020 IBM
###########################################################

data "ibm_resource_group" "resource_group" {
  name = var.resource_group
}
module "database_simple-redis" {
  source            = "../../modules/redis"
  location          = var.location
  plan              = "standard"
  service_name      = var.service_name
  resource_group_id = data.ibm_resource_group.resource_group.id
  tags              = var.tags
  memory_allocation = var.memory_allocation
  disk_allocation   = var.disk_allocation
  cpu_allocation    = var.cpu_allocation
  database_version  = var.database_version
  service_endpoints = var.service_endpoints
}