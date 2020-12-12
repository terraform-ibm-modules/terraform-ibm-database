###########################################################
# IBM Cloud `databases-for-redis` database provisioning
# Copyright 2020 IBM
###########################################################

provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = var.location
}