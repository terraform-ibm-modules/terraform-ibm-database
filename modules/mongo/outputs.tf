###########################################################
# IBM Cloud `databases-for-mongodb` database provisioning
# Copyright 2020 IBM
###########################################################
output "mongodb" {
  value = ibm_database.mongodb
}