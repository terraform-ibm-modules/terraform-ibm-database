###########################################################
# IBM Cloud `databases-for-redis` database provisioning
# Copyright 2020 IBM
###########################################################
terraform {
  required_version = ">=0.13"
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
    }
  }
}