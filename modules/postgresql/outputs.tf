###########################################################
# IBM Cloud `databases-for-postgresql` database provisioning
# Copyright 2020 IBM
###########################################################
output "postgresql" {
  value     = ibm_database.postgresql
  sensitive = true
}