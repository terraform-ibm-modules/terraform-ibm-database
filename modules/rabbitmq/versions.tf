###########################################################
# IBM Cloud `databases-for-elasticsearch` database provisioning
# Copyright 2020 IBM
###########################################################
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = "1.41.1"
    }
  }
}
