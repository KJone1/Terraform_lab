# GCP configuration

 deploy Google Compute Engine instance in GCP, with an attached disk, firewall rules and network configuration

## Inputs

| Name             	| Description                   	| Type        	| Default                                                                                                                                                                                                         	| Required 	|
|------------------	|-------------------------------	|-------------	|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|----------	|
| deployment_count 	| number of instances to deploy 	| number      	| 1                                                                                                                                                                                                               	| yes      	|
| region           	| region to deploy to           	| map(string) 	| {<br>poland     = "europe-central2",<br>finland     = "europe-north1",<br>belgium     = "europe-west1",<br>england     = "europe-west2",<br>germany     = "europe-west3",<br>switzerland = "europe-west6",<br>} 	| yes      	|
| project          	| project id                    	| map(string) 	| test-project = "onyx-philosophy-333713"                                                                                                                                                                         	| yes      	|                   | yes      |

## Outputs

| Name              	| Description                                                                  	|
|-------------------	|------------------------------------------------------------------------------	|
| instance_metadata 	| Metadata of deployed gcp compute instance => name, deployed image, zone, status 	|

## Running

To provision this example, run the following from within this directory:

- `terraform init` to get plugins
- `terraform plan` to dry-run the infrastructure changes
- `terraform apply` to apply the infrastructure changes
- `terraform destroy` to tear down the created infrastructure
