###########################################################
# IBM Cloud `databases-for-elasticsearch` database provisioning
# Copyright 2020 IBM
###########################################################
output "elasticsearch" {
  description = "simple elastic search"
  value       = ibm_database.elasticsearch
}
