# Network Configuration

 Module to deploy VPC network and firewall rules in AWS.

## Inputs

| Name         	| Description      	| Type   	| Default        	| Required 	|
|--------------	|------------------	|--------	|----------------	|----------	|
| network_name 	| VPC network name 	| string 	| my-vpc-network 	| no      	|
| availability_zone 	| VPC availability zone 	| string 	|  	| yes      	|
## Outputs

| Name         	| Description      	
|--------------	|------------------
| name 	        | VPC network name 	
| subnet_id	        | VPC subnet id 	
| sg_firewall        | VPC security group 	

## Running

To call this module, include in your tf configuration:

```terraform

module "network" {
  source            = "../modules/network"
  network_name      = "my-main-vpc-network"
  availability_zone = "${var.region}${var.az}" 
}

```
