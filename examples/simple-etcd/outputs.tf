###########################################################
# IBM Cloud simple database provisioning
# Copyright 2020 IBM
###########################################################

output "simple_etcd" {
  description = "simple etcd"
  value       = module.database_simple_etcd
}
