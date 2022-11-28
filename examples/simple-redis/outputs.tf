###########################################################
# IBM Cloud simple database provisioning
# Copyright 2020 IBM
###########################################################

output "simple-redis" {
  value     = module.database_simple-redis
  sensitive = true
}