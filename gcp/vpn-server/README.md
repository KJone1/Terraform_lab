<!-- BEGIN_TF_DOCS -->
# WireGuard configuration

Deploy WireGuard VPN server in GCP, with firewall rules and network configuration.


## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) |  ~> 1.1.4 |
| <a name="requirement_google"></a> [google](#requirement\_google) | 4.11.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.11.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_network"></a> [network](#module\_network) | ../modules/network | n/a |
| <a name="module_vm"></a> [vm](#module\_vm) | ../modules/vm | n/a |

## Resources

| Name | Type |
|------|------|
| [google_compute_firewall.wg-vpn-rule](https://registry.terraform.io/providers/hashicorp/google/4.11.0/docs/resources/compute_firewall) | resource |
| [google_compute_image.rocky8-latest](https://registry.terraform.io/providers/hashicorp/google/4.11.0/docs/data-sources/compute_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project"></a> [project](#input\_project) | project id | `string` | n/a | yes |
| <a name="input_machine_type"></a> [machine\_type](#input\_machine\_type) | machine type | `string` | `"e2-medium"` | no |
| <a name="input_region"></a> [region](#input\_region) | region to deploy | `string` | `"us-west1"` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | zone to deploy -> 'a','b','c' | `string` | `"c"` | no |

## Running

To provision this example, run the following from within this directory:

- `terraform init` to get plugins
- `terraform plan` to dry-run the infrastructure changes
- `terraform apply` to apply the infrastructure changes
- `terraform destroy` to tear down the created infrastructure

---
\- maintained by: KJone1

<!-- END_TF_DOCS -->