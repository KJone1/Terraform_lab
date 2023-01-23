<!-- BEGIN_TF_DOCS -->
# Network Configuration

Module to deploy VPC network and firewall rules in GCP.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) |  ~> 1.1.4 |
| <a name="requirement_google"></a> [google](#requirement\_google) |  >= 4.11.0 |

## Resources

| Name | Type |
|------|------|
| [google_compute_firewall.health-check-rule](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.http-rule](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.https-rule](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.internal-rule](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.ping-rule](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.ssh-rule](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_network.vpc_network](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network) | resource |
| [google_compute_subnetwork.vpc_subnet](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_range"></a> [cidr\_range](#input\_cidr\_range) | VPC IP CIDR range | `string` | `"10.2.2.0/26"` | no |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | VPC network name | `string` | `"my-vpc-network"` | no |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | VPC subnetwork name | `string` | `"my-vpc-subnetwork"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_network_name"></a> [network\_name](#output\_network\_name) | VPC network name |
| <a name="output_subnet_name"></a> [subnet\_name](#output\_subnet\_name) | VPC subnetwork name |

## Running

To call this module, include in your tf configuration:

```terraform

module "network" {
  source       = "../modules/network"
  network_name = "my-vpc-network-name" 
}

```

---
\- maintained by: KJone1

<!-- END_TF_DOCS -->