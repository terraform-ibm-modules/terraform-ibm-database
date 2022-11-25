###########################################################
# IBM Cloud simple database provisioning
# Copyright 2020 IBM
###########################################################

output "simple_elasticsearch" {
  description = "simple elastic search"
  value       = module.database_simple_elasticsearch
}
