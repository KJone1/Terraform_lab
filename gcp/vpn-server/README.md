<!-- BEGIN_TF_DOCS -->
# WireGuard configuration

Deploy WireGuard VPN server in GCP, with firewall rules and network configuration.

## Requirements

| Name | Version |
|------|---------|
| terraform |  >= 1.1.4 |
| google | 4.11.0 |

## Providers

| Name | Version |
|------|---------|
| google | 4.11.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| network | ../modules/network | n/a |
| vm | ../modules/vm | n/a |

## Resources

| Name | Type |
|------|------|
| [google_compute_firewall.wg-vpn-rule](https://registry.terraform.io/providers/hashicorp/google/4.11.0/docs/resources/compute_firewall) | resource |
| [google_compute_image.rocky8-latest](https://registry.terraform.io/providers/hashicorp/google/4.11.0/docs/data-sources/compute_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| project | project id | `string` | n/a | yes |
| machine\_type | machine type | `string` | `"e2-medium"` | no |
| region | region to deploy | `string` | `"us-west1"` | no |
| zone | zone to deploy -> 'a','b','c' | `string` | `"c"` | no |

## Running

To provision this example, run the following from within this directory:

- `terraform init` to get plugins
- `terraform plan` to dry-run the infrastructure changes
- `terraform apply` to apply the infrastructure changes
- `terraform destroy` to tear down the created infrastructure

---
\- maintained by: [KJone1](https://github.com/KJone1)

<!-- END_TF_DOCS -->
