###########################################################
# IBM Cloud `databases-for-mongodb` database provisioning
# Copyright 2020 IBM
###########################################################

variable "ibmcloud_api_key" {
  type        = string
  description = "IBM-Cloud API Key"
}
variable "resource_group" {
  type        = string
  description = "Resource Group Name"
}
variable "name" {
  type        = string
  description = "Resource instance name for example, my Database instance"
}
variable "plan" {
  type        = string
  description = "The plan type of the Database instance"
}
variable "location" {
  type        = string
  description = "The location or the region in which Database instance exists"
}
variable "adminpassword" {
  default     = null
  type        = string
  description = "The admin user password for the instance"
}
variable "database_version" {
  default     = null
  type        = string
  description = "The database version to provision if specified"
}
variable "memory_allocation" {
  default     = null
  type        = number
  description = "Memory allocation required for cluster"
}
variable "disk_allocation" {
  default     = null
  type        = number
  description = "Disk allocation required for cluster"
}
variable "cpu_allocation" {
  default     = null
  type        = number
  description = "CPU allocation required for cluster"
}
variable "service_endpoints" {
  default     = null
  type        = string
  description = "Types of the service endpoints. Possible values are 'public', 'private', 'public-and-private'."
}
variable "backup_id" {
  default     = null
  type        = string
  description = "The CRN of backup source database"
}
variable "remote_leader_id" {
  default     = null
  type        = string
  description = "The CRN of leader database"
}
variable "kms_instance" {
  default     = null
  type        = string
  description = "The CRN of Key protect instance"
}
variable "disk_encryption_key" {
  default     = null
  type        = string
  description = "The CRN of Key protect key"
}
variable "backup_encryption_key" {
  default     = null
  type        = string
  description = "The Backup Encryption Key CRN"
}
variable "tags" {
  default     = null
  type        = set(string)
  description = "Tags for the database"
}
variable "point_in_time_recovery_deployment_id" {
  default     = null
  type        = string
  description = "The CRN of source instance"
}
variable "point_in_time_recovery_time" {
  default     = null
  type        = string
  description = "The point in time recovery time stamp of the deployed instance"
}
variable "users" {
  default     = null
  type        = set(map(string))
  description = "Database Users. It is set of username and passwords"
}
variable "whitelist" {
  default     = null
  type        = set(map(string))
  description = "Database Whitelist It is set of IP Address and description"
}
variable "cpu_rate_increase_percent" {
  default     = null
  type        = number
  description = "Auto Scaling CPU Rate: Increase Percent"
}
variable "cpu_rate_limit_count_per_member" {
  default     = null
  type        = number
  description = "Auto Scaling CPU Rate: Limit count per number"
}
variable "cpu_rate_period_seconds" {
  default     = null
  type        = number
  description = "Auto Scaling CPU Rate: Period Seconds"
}
variable "cpu_rate_units" {
  default     = null
  type        = string
  description = "Auto Scaling CPU Rate: Units "
}
variable "disk_capacity_enabled" {
  default     = null
  type        = bool
  description = "Auto Scaling Disk Scalar: Capacity Enabled"
}
variable "disk_free_space_less_than_percent" {
  default     = null
  type        = number
  description = "Auto Scaling Disk Scalar: Capacity Free Space Less Than Percent"
}
variable "disk_io_above_percent" {
  default     = null
  type        = number
  description = "Auto Scaling Disk Scalar: IO Utilization Above Percent"
}
variable "disk_io_enabled" {
  default     = null
  type        = bool
  description = "Auto Scaling Disk Scalar: IO Utilization Enabled"
}
variable "disk_io_over_period" {
  default     = null
  type        = string
  description = "Auto Scaling Disk Scalar: IO Utilization Over Period"
}
variable "disk_rate_increase_percent" {
  default     = null
  type        = number
  description = "Auto Scaling Disk Rate: Increase Percent"
}
variable "disk_rate_limit_mb_per_member" {
  default     = null
  type        = number
  description = "Auto Scaling Disk Rate: Limit mb per member"
}
variable "disk_rate_period_seconds" {
  default     = null
  type        = number
  description = "Auto Scaling Disk Rate: Period Seconds"
}
variable "disk_rate_units" {
  default     = null
  type        = string
  description = "Auto Scaling Disk Rate: Units "
}
variable "memory_io_above_percent" {
  default     = null
  type        = number
  description = "Auto Scaling Memory Scalar: IO Utilization Above Percent"
}
variable "memory_io_enabled" {
  default     = null
  type        = bool
  description = "Auto Scaling Memory Scalar: IO Utilization Enabled"
}
variable "memory_io_over_period" {
  default     = null
  type        = string
  description = "Auto Scaling Memory Scalar: IO Utilization Over Period"
}
variable "memory_rate_increase_percent" {
  default     = null
  type        = number
  description = "Auto Scaling Memory Rate: Increase Percent"
}
variable "memory_rate_limit_mb_per_member" {
  default     = null
  type        = number
  description = "Auto Scaling Memory Rate: Limit mb per member"
}
variable "memory_rate_period_seconds" {
  default     = null
  type        = number
  description = "Auto Scaling Memory Rate: Period Seconds"
}
variable "memory_rate_units" {
  default     = null
  type        = string
  description = "Auto Scaling Memory Rate: Units "
}