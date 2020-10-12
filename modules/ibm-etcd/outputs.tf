###########################################################
# IBM Cloud `databases-for-etcd` database provisioning
# Copyright 2020 IBM
###########################################################
output "etcd" {
  value = ibm_database.etcd
}