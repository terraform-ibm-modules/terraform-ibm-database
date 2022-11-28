###########################################################
# Create service credentials to existing DB instance
# Copyright 2021 IBM
###########################################################

provider "ibm" {
  region = var.ibm_region
}

data "ibm_resource_group" "resource_group" {
  name = var.resource_group != null ? var.resource_group : "default"
}

module "db_service_credentials" {
  source            = "../../modules/service-credentials"
  db_name           = var.db_name
  location          = var.location
  resource_group_id = data.ibm_resource_group.resource_group.id
  key_name          = var.key_name
  key_role          = var.key_role
}
