###########################################################
# Create service credentials to existing DB instance
# Copyright 2021 IBM
###########################################################


variable "db_name" {
  type        = string
  description = "Name of an existing Database"
}

variable "resource_group_id" {
  type        = string
  description = "ID of the resource group, DB instance belongs to"
  default     = null
}

variable "location" {
  type        = string
  description = "Location in which DB instance exists"
  default     = null
}

variable "key_name" {
  type        = string
  description = "Nam eof the Key instance to be created"
}
variable "key_role" {
  type        = string
  description = "Name of a user role. Valid roles are Writer, Reader, Manager, Administrator, Operator, Viewer, and Editor."
  default     = "Viewer"
}
