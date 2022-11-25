###########################################################
# Create service credentials to existing DB instance
# Copyright 2021 IBM
###########################################################

output "key_id" {
  description = "The ID of the key"
  value       = module.db_service_credentials.key_id
}
