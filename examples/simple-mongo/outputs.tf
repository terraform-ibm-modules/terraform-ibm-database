###########################################################
# IBM Cloud simple database provisioning
# Copyright 2020 IBM
###########################################################

output "simple_mongo" {
  description = "simple mongo"
  value       = module.database_simple_mongo
}
