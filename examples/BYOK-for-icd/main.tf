###########################################################
# IBM Cloud simple database with BYOK
# Copyright 2020 IBM
###########################################################

module "byok_kms_key" {
  source                 = "../../../terraform-ibm-kms/examples/key"
  resource_group         = var.resource_group
  service_name           = "kms-${var.service_name}"
  location               = var.location
  tags                   = var.tags
  allowed_network_policy = var.allowed_network_policy
  name                   = var.name
  standard_key_type      = false
  force_delete           = true
  network_access_allowed = var.network_access_allowed
}

/*
Below are the source values
Please replace source to respective modules while provisioning
Elastic Search database - "terraform-ibm-modules/database/ibm//modules/elasticsearch"
ETCD database           - "terraform-ibm-modules/database/ibm//modules/etcd"
Mongo database          - "terraform-ibm-modules/database/ibm//modules/mongo"
PostgreSQL database     - "terraform-ibm-modules/database/ibm//modules/postgresql"
RabbitMQ database       - "terraform-ibm-modules/database/ibm//modules/rabbitmq"
Redis database          - "terraform-ibm-modules/database/ibm//modules/redis"
*/

data "ibm_resource_group" "icd_resource_group" {
  name = var.resource_group
}
module "database_byok-icd" {
  source                = "../../modules/redis"
  location              = var.location
  plan                  = "standard"
  service_name          = "icd-${var.service_name}"
  resource_group_id     = data.ibm_resource_group.icd_resource_group.id
  tags                  = var.tags
  memory_allocation     = var.memory_allocation
  disk_allocation       = var.disk_allocation
  cpu_allocation        = var.cpu_allocation
  database_version      = var.database_version
  service_endpoints     = var.service_endpoints
  kms_instance          = module.byok_kms_key.kms_instance_module_output.kms_instance_output.guid
  disk_encryption_key   = module.byok_kms_key.kms_key_module_ouput.kms_key_output.crn
  backup_encryption_key = var.backup_encryption_key
}