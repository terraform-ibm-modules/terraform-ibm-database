###########################################################
# IBM Cloud simple database provisioning
# Copyright 2020 IBM
###########################################################

variable "resource_group" {
  type        = string
  description = "Resource Group Name"
}
variable "location" {
  type        = string
  description = "The location or the region in which Database instance exists"
}
variable "service_name" {
  type        = string
  description = "Resource instance name for example, my Database instance"
}
variable "tags" {
  default     = null
  type        = set(string)
  description = "Tags for the database"
}
variable "memory_allocation" {
  default     = null
  type        = number
  description = "Memory allocation required for database"
}
variable "disk_allocation" {
  default     = null
  type        = number
  description = "Disk allocation required for database"
}
variable "cpu_allocation" {
  default     = null
  type        = number
  description = "CPU allocation required for database"
}
variable "database_version" {
  default     = null
  type        = string
  description = "The database version to provision if specified"
}
variable "service_endpoints" {
  default     = null
  type        = string
  description = "Types of the service endpoints. Possible values are 'public', 'private', 'public-and-private'."
}
