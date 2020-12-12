###########################################################
# IBM Cloud `databases-for-elasticsearch` database provisioning
# Copyright 2020 IBM
###########################################################
output "elasticsearch" {
  value = ibm_database.elasticsearch
}