###########################################################
# IBM Cloud `databases-for-redis` database provisioning
# Copyright 2020 IBM
###########################################################
output "redis" {
  value     = ibm_database.redis
  sensitive = true
}