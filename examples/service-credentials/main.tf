###########################################################
# Create service credentials to existing DB instance
# Copyright 2021 IBM
###########################################################

provider "ibm" {

}

module "db-service-credentials" {
  source   = "../../modules/service-credentials"
  db_name  = var.db_name
  key_name = var.key_name
  key_role = var.key_role
}