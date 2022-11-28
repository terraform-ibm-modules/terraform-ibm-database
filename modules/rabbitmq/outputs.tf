###########################################################
# IBM Cloud `messages-for-rabbitmq` database provisioning
# Copyright 2020 IBM
###########################################################
output "rabbitmq" {
  description = "simple rabbitmq"
  value       = ibm_database.rabbitmq
  sensitive   = true
}
