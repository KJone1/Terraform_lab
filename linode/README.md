# GCP configuration

 deploy Google Compute Engine instance in GCP, with an attached disk, firewall rules and network configuration.

## Prerequisites

- Generate linode access token and export as env var `TF_VAR_LINODE_TOKEN`
- Use `AWS_ACCESS_KEY_ID` environment variable for s3 backend access key.
- Use `AWS_SECRET_ACCESS_KEY` environment variable for s3 backend secret key.

## Inputs

| Name             	| Description                   	| Type   	| Default   	| Required 	|
|------------------	|-------------------------------	|--------	|-----------	|----------	|
| deployment_count 	| number of instances to deploy 	| number 	|           	| yes      	|
| region           	| region to deploy to           	| string 	| "ap-west" 	| yes      	|
| LINODE_TOKEN     	| Linode accese token           	| string 	|           	| yes      	|

## Outputs

| Name              	| Description                                	|
|-------------------	|--------------------------------------------	|
| instance_metadata 	| Metadata of deployed gcp compute instance  	|
| volume_metadata   	| Metadata of deployed Block Storage Volumes 	|

## Running

To provision this example, run the following from within this directory:

- `terraform init` to get plugins
- `terraform plan` to dry-run the infrastructure changes
- `terraform apply` to apply the infrastructure changes
- `terraform destroy` to tear down the created infrastructure
