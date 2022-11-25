###########################################################
# IBM Cloud `databases-for-redis` database provisioning
# Copyright 2020 IBM
###########################################################
output "redis" {
  description = "simple redis"
  value       = ibm_database.redis
  sensitive   = true
}
