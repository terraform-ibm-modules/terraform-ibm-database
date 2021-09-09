###########################################################
# Create service credentials to existing DB instance
# Copyright 2021 IBM
###########################################################

output "key_id" {
  description = "The ID of the key"
  value       = ibm_resource_key.dbKey.id
}