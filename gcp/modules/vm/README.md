# GCP instance configuration

 Module to Deploy Google Compute Engine instance.

## Inputs
| Name             	| Description                                    	| Type   	| Default                                                                  	| Required 	|
|------------------	|------------------------------------------------	|--------	|--------------------------------------------------------------------------	|----------	|
| name             	| instance names without deployment count number 	| string 	| n/a                                                                      	| yes      	|
| network_name     	| VPC network name                               	| string 	| n/a                                                                      	| yes      	|
| subnet_name      	| VPC subnetwork name                            	| string 	| n/a                                                                      	| yes      	|
| deployment_count 	| number of instances to deploy                  	| number 	| 1                                                                        	| no       	|
| region           	| region to deploy to                            	| string 	| "europe-central2"                                                        	| no       	|
| zone             	| zone to deploy to                              	| string 	| "c"                                                                      	| no       	|
| machine_type     	| instance type                                  	| string 	| "e2-standard-4"                                                          	| no       	|
| labels           	| instance labels                                	| map    	| {"environment" = "dev"<br> "role" = "dev-server"<br> "app" = "playground"} 	| no       	|
| tags             	| instance tags                                  	| list   	| ["http",<br> "https",<br> "ssh",<br> "ping"]                             	| no       	|
 |startup_script             	| startup script 	| string 	| n/a                                                                     	| no  
## Outputs

| Name              	| Description                                                                  	|
|-------------------	|------------------------------------------------------------------------------	|
| metadata 	| Metadata of deployed gcp compute instance => name, deployed image, zone , id 	|

## Running

To call this module, include in your tf configuration:

```terraform

module "vm" {
  source       = "../modules/vm"
  name         = "demo-machine"
  network_name = "my-vpc-network-name" 
  subnet_name  = "my-vpc-subnet-name" 
}

```