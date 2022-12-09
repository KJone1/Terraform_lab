# Network Configuration

 Module to deploy VPC network and firewall rules in GCP.

## Inputs

| Name          | Description       | Type    | Default         | Required  |
|-------------- |------------------ |-------- |---------------- |---------- |
| network_name  | VPC network name  | string  | my-vpc-network  | no  |
| subnet_name   | VPC subnetwork name | string | my-vpc-subnet | no |
| cidr_range    | VPC IP CIDR range | string  | 10.2.2.0/26 | no  |

## Outputs

| Name          | Description
|-------------- |------------------
| network_name  | VPC network name
| subnet_name   | VPC subnetwork name

## Running

To call this module, include in your tf configuration:

```terraform

module "network" {
  source       = "../modules/network"
  network_name = "my-vpc-network-name" 
}

```
