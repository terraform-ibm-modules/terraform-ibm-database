###########################################################
# IBM Cloud simple database provisioning
# Copyright 2020 IBM
###########################################################

output "simple_redis" {
  description = "simple reids"
  value       = module.database_simple_redis
  sensitive   = true
}
