###########################################################
# IBM Cloud simple database provisioning
# Copyright 2020 IBM
###########################################################

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

data "ibm_resource_group" "resource_group" {
  name = var.resource_group
}
module "database_simple-icd" {
  source            = "../../modules/elasticsearch"
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