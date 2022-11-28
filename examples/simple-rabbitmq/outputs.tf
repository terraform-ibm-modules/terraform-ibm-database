###########################################################
# IBM Cloud simple database provisioning
# Copyright 2020 IBM
###########################################################

output "simple_rabbitmq" {
  description = "simple rabbitmq"
  value       = module.database_simple_rabbitmq
}
