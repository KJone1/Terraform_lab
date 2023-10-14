<!-- BEGIN_TF_DOCS -->

# GCP configuration

Deploy Google Compute Engine instance in GCP, with an attached disk, firewall rules and network configuration.

## Requirements

| Name                                                                     | Version  |
| ------------------------------------------------------------------------ | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.1.4 |
| <a name="requirement_google"></a> [google](#requirement_google)          | 4.11.0   |

## Providers

| Name                                                      | Version |
| --------------------------------------------------------- | ------- |
| <a name="provider_google"></a> [google](#provider_google) | 4.11.0  |

## Modules

| Name                                                     | Source             | Version |
| -------------------------------------------------------- | ------------------ | ------- |
| <a name="module_disk"></a> [disk](#module_disk)          | ../modules/storage | n/a     |
| <a name="module_network"></a> [network](#module_network) | ../modules/network | n/a     |
| <a name="module_vm"></a> [vm](#module_vm)                | ../modules/vm      | n/a     |

## Resources

| Name                                                                                                                                           | Type        |
| ---------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [google_compute_instance_group.servers](https://registry.terraform.io/providers/hashicorp/google/4.11.0/docs/resources/compute_instance_group) | resource    |
| [google_compute_image.rocky8-latest](https://registry.terraform.io/providers/hashicorp/google/4.11.0/docs/data-sources/compute_image)          | data source |

## Inputs

| Name                                                                              | Description                   | Type     | Default           | Required |
| --------------------------------------------------------------------------------- | ----------------------------- | -------- | ----------------- | :------: |
| <a name="input_name"></a> [name](#input_name)                                     | instance name                 | `string` | n/a               |   yes    |
| <a name="input_project"></a> [project](#input_project)                            | project id                    | `string` | n/a               |   yes    |
| <a name="input_deployment_count"></a> [deployment_count](#input_deployment_count) | number of instances to deploy | `number` | `1`               |    no    |
| <a name="input_machine_type"></a> [machine_type](#input_machine_type)             | machine type                  | `string` | `"e2-standard-4"` |    no    |
| <a name="input_region"></a> [region](#input_region)                               | region to deploy              | `string` | `"us-west1"`      |    no    |
| <a name="input_zone"></a> [zone](#input_zone)                                     | zone to deploy -> 'a','b','c' | `string` | `"c"`             |    no    |

## Outputs

| Name                                                                                   | Description                               |
| -------------------------------------------------------------------------------------- | ----------------------------------------- |
| <a name="output_disk_metadata"></a> [disk_metadata](#output_disk_metadata)             | Metadata of deployed gcp compute disk     |
| <a name="output_instance_metadata"></a> [instance_metadata](#output_instance_metadata) | Metadata of deployed gcp compute instance |

## Running

To provision this example, run the following from within this directory:

- `terraform init` to get plugins
- `terraform plan` to dry-run the infrastructure changes
- `terraform apply` to apply the infrastructure changes
- `terraform destroy` to tear down the created infrastructure

---

\- maintained by: KJone1

<!-- END_TF_DOCS -->
