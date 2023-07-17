###########################################################
# IBM Cloud `databases-for-mongodb` database provisioning
# Copyright 2020 IBM
###########################################################
output "mongodb" {
  description = "simple mongodb"
  value       = ibm_database.mongodb
  sensitive   = true
}
