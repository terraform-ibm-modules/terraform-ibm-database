# Creation of service credentials to an existing database instance

This example is used to create a service credentials to an existing database on IBM Cloud Infrastructure.

## Example Usage
```
provider "ibm" {

}

module "db-service-credentials" {
  source           = "../../modules/service-credentials"
  db_name          = var.db_name
  key_name         = var.key_name
  key_role         = var.key_role
  key_tags         = var.key_tags
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name                 | Description                                       | Type     | Default | Required |
|----------------------|---------------------------------------------------|----------|---------|----------|
| db_name              | Existing db Name.                                 | string   | n/a     | yes      |
| ibm_region           | Provider level region.                            | string   | n/a     | no       |
| resource_group       | Name of the resource group                        | string   | n/a     | no       |
| location             | Location to which DB instance belongs to          | string   | n/a     | no       |
| key_name             | Name of key to be created.                        | string   | n/a     | yes      |
| key_role             | Name of the user role                             | string   | n/a     | yes      |


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

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
