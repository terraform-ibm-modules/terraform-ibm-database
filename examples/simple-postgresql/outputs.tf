###########################################################
# IBM Cloud simple database provisioning
# Copyright 2020 IBM
###########################################################

output "simple_postgresql" {
  description = "simple postgresql"
  value       = module.database_simple_postgresql
}
