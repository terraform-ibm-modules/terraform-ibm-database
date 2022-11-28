###########################################################
# IBM Cloud `messages-for-rabbitmq` database provisioning
# Copyright 2020 IBM
###########################################################
output "rabbitmq" {
  value     = ibm_database.rabbitmq
  sensitive = true
}