###########################################################
# Create service credentials to existing DB instance
# Copyright 2021 IBM
###########################################################


variable "db_name" {
  type        = string
  description = "Name of an existing Database"
}
variable "key_name" {
  type        = string
  description = "Nam eof the Key instance to be created"
}
variable "key_role" {
  type        = string
  description = "Name of a user role. Valid roles are Viewer, Administrator, Operator, Editor."
  default     = "Viewer"
}
