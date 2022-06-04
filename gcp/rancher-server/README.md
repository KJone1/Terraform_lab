# GCP configuration

 deploy Rancher v2.5.13 server in GCP, with firewall rules and network configuration

## Inputs

| Name 	| Description      	| Type   	| Default        	| Required 	|
|------	|------------------	|--------	|----------------	|----------	|
| name 	| VPC network name 	| string 	| my-vpc-network 	| yes      	|

## Outputs

Currently none

## Running

To provision this example, run the following from within this directory:

- `terraform init` to get plugins
- `terraform plan` to dry-run the infrastructure changes
- `terraform apply` to apply the infrastructure changes
- `terraform destroy` to tear down the created infrastructure
