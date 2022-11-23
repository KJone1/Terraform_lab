# WireGuard configuration

Deploy WireGuard VPN server in GCP, with firewall rules and network configuration.

## Prerequisites

- Create a Project.
- Generate Service Account keys for terraform.
- Update 'project' variable in `.tfvars` to match your project id.

## Inputs

| Name    	| Description         	| Type   	| Default                  	| Required 	|
|---------	|---------------------	|--------	|--------------------------	|----------	|
| region  	| region to deploy to 	| string 	| "us-west1"        	| no      	|
| zone    	| zone in region      	| string 	| "c"                      	| no      	|
| project 	| project id          	| string 	|  	| yes      	|

## Outputs

Currently none

## Running

To provision this example, run the following from within this directory:

- `terraform init` to get plugins
- `terraform plan` to dry-run the infrastructure changes
- `terraform apply` to apply the infrastructure changes
- `terraform destroy` to tear down the created infrastructure
