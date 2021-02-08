# Simple Database

This example is used to provision  simple `databases for elasticsearch`  Database on IBM Cloud Infrastructure.

## Example Usage
```
module "byok_kms_key" {
  source                 = "../../../terraform-ibm-kms/examples/key"
  resource_group         = var.resource_group
  service_name           = "kms-${var.service_name}"
  location               = var.location
  tags                   = var.tags
  allowed_network_policy = var.allowed_network_policy
  name                   = var.name
  standard_key_type      = false
  force_delete           = true
  network_access_allowed = var.network_access_allowed
}

data "ibm_resource_group" "icd_resource_group" {
  name = var.resource_group
}
module "database_byok-icd" {
  source                = "../../modules/redis"
  location              = var.location
  plan                  = "standard"
  service_name          = "icd-${var.service_name}"
  resource_group_id     = data.ibm_resource_group.icd_resource_group.id
  tags                  = var.tags
  memory_allocation     = var.memory_allocation
  disk_allocation       = var.disk_allocation
  cpu_allocation        = var.cpu_allocation
  database_version      = var.database_version
  service_endpoints     = var.service_endpoints
  kms_instance          = module.byok_kms_key.kms_instance_module_output.kms_instance_output.guid
  disk_encryption_key   = module.byok_kms_key.kms_key_module_ouput.kms_key_output.crn
  backup_encryption_key = var.backup_encryption_key
}
```
### Note:
* Below are the source values. Please replace source to respective modules while provisioning
```
  Elastic Search database - "terraform-ibm-modules/database/ibm//modules/elasticsearch"
```
```
  ETCD database           - "terraform-ibm-modules/database/ibm//modules/etcd"
```
```
  Mongo database          - "terraform-ibm-modules/database/ibm//modules/mongo"
```
```
  PostgreSQL database     - "terraform-ibm-modules/database/ibm//modules/postgresql"
```
```
  RabbitMQ database       - "terraform-ibm-modules/database/ibm//modules/rabbitmq"
```
```
  Redis database          - "terraform-ibm-modules/database/ibm//modules/redis"
```


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name                                  | Description                                                       | Type     | Default | Required |
|---------------------------------------|-------------------------------------------------------------------|----------|---------|----------|
| resource_group                        | Resource Group Name.                                              | string   | n/a     | yes      |
| location                              | The location or the region in which Database instance exists.     | string   | n/a     | yes      |
| plan                                  | The plan type of the Database instance.                           | string   | standard| yes      |
| service_name                          | Resource instance name for example, my Database instance.         | string   | n/a     | yes      |
| tags                                  | Tags for the database                                             | set(str) | n/a     | no       |
| memory_allocation                     | Memory allocation required for database.                          | number   | n/a     | no       |
| disk_allocation                       | Disk allocation required for database                             | number   | n/a     | no       |
| cpu_allocation                        | CPU allocation required for database.                             | number   | n/a     | no       |
| database_version                      | The database version to provision if specified.                   | string   | n/a     | no       |
| service_endpoints                     | Types of the service endpoints.                                   | string   | public  | no       |
| kms_instance                          | The CRN of Key protect instance.                                  | string   | null    | yes       |
| disk_encryption_key                   | The CRN of Key protect key                                        | string   | null    | yes       |
| backup_encryption_key                 | backup_encryption_key_crn                                         | string   | null    | yes       |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

NOTE: We can configure the list of users, whitelist by entering respective details in input.tfvars.

## Usage

```
terraform init
```
```
terraform plan
```
```
terraform apply
```
## Note

All optional fields are given value `null` in varaible.tf file. User can configure the same by overwriting with appropriate values.

* If the following attributes `database_version`,`memory_allocation`,`disk_allocation`,`cpu_allocation` are provided with null values, then API will create a database with the default values. These default values which are provided by API may differ and are not maintained by terraform.
* To have default encryption the following attributes `kms_instance`,`disk_encryption_key`,`backup_encryption_key`  should be provided with null values 