###########################################################
# Create service credentials to existing DB instance
# Copyright 2021 IBM
###########################################################
data "ibm_database" "db" {
  name              = var.db_name
  location          = var.location != null ? var.location : null
  resource_group_id = var.resource_group_id != null ? var.resource_group_id : null
}

resource "ibm_resource_key" "dbKey" {
  name                 = var.key_name
  role                 = var.key_role
  resource_instance_id = data.ibm_database.db.id
}