###########################################################
# IBM Cloud `databases-for-mongodb` database provisioning
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