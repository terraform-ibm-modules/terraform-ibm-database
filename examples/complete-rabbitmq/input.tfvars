###########################################################
# IBM Cloud `messages-for-rabbitmq` database provisioning
# Copyright 2020 IBM
###########################################################

users = [{
  name     = "user123"
  password = "password12"
}]
whitelist = [{
  address     = "172.168.1.1/32"
  description = "desc"
}]
