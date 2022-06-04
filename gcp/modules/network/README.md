# Network Configuration

 Module to deploy VPC network and firewall rules in GCP.

## Inputs

| Name         	| Description      	| Type   	| Default        	| Required 	|
|--------------	|------------------	|--------	|----------------	|----------	|
| network_name 	| VPC network name 	| string 	| my-vpc-network 	| yes      	|

## Outputs

| Name         	| Description      	
|--------------	|------------------
| name 	        | VPC network name 	

## Running

To call this module, include in your tf configuration:

```terraform

module "network" {
  source       = "../modules/network"
  network_name = "my-vpc-network-name" 
}

```
