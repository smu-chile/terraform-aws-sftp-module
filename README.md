# terraform-aws-sftp-module


This module has the ability to an SFTP service deployed onto a S3 bucket

## Providers
It order to be called, you must use these providers on your main script

| Name | Version |
|------|---------|
| <a name="https://registry.terraform.io/providers/hashicorp/vault/3.0.1"></a> [hashicorp/aws](#hashicorp/aws) | ~> 3.70.0 |


## Variables

## Inputs
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| environment | Environment | `list` | `["dev", "qa", "prod"]` | yes |
| root-domain | Domain name for sftp conecction | `string` | `""` | yes |
| subnet-ids | Id's for all subnets where the sftp will be connected | `string` | `""` | yes |
| cidr-blocks | CIDR Block for accepting connection to the sftp | `string` | `""` | yes |
| endpoint-type |  The type of endpoint that you want your SFTP server connect to | `string` | `""` | yes |
| home-path | Home path for the sftp server | `string` | `""` | yes |
| security-policy-name | Security policy name  | `string` 
| `""` | yes |
| vpc-id | Id for the VPC where the SFTP will reside | `string` | `""` | yes |
| protocols | Specifies the file transfer protocol or protocols over which your file transfer protocol client can connect to your server's endpoint  | `string` | `""` | yes |
| aws_region | AWS Region for connection  | `string` | `"us-east-1"` | yes |
| region | Region for tagging resources  | `string` | `""` | yes |
| country | Country for  for tagging resources | `string` | `""` | yes |
| ceco | Cost Center for tagging resources  | `string` | `""` | yes |
| owner | Owner for tagging resources  | `string` | `""` | yes |


