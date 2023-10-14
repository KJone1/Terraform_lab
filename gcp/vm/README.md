<!-- BEGIN_TF_DOCS -->
# GCP configuration

Deploy Google Compute Engine instance in GCP, with an attached disk, firewall rules and network configuration.

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
| [google_compute_firewall.kube-fw-rule](https://registry.terraform.io/providers/hashicorp/google/4.11.0/docs/resources/compute_firewall) | resource |
| [google_compute_instance_group.servers](https://registry.terraform.io/providers/hashicorp/google/4.11.0/docs/resources/compute_instance_group) | resource |
| [google_compute_image.rocky8-latest](https://registry.terraform.io/providers/hashicorp/google/4.11.0/docs/data-sources/compute_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | instance name | `string` | n/a | yes |
| project | project id | `string` | n/a | yes |
| deployment\_count | number of instances to deploy | `number` | `1` | no |
| machine\_type | machine type | `string` | `"e2-standard-4"` | no |
| region | region to deploy | `string` | `"us-west1"` | no |
| zone | zone to deploy -> 'a','b','c' | `string` | `"c"` | no |

## Outputs

| Name | Description |
|------|-------------|
| instance\_metadata | Metadata of deployed gcp compute instance |

## Running

To provision this example, run the following from within this directory:

- `terraform init` to get plugins
- `terraform plan` to dry-run the infrastructure changes
- `terraform apply` to apply the infrastructure changes
- `terraform destroy` to tear down the created infrastructure

---
\- maintained by: [KJone1](https://github.com/KJone1)

<!-- END_TF_DOCS -->
