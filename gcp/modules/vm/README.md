<!-- BEGIN_TF_DOCS -->

# GCP instance configuration

Module to Deploy Google Compute Engine instance.

## Requirements

| Name                                                                     | Version   |
| ------------------------------------------------------------------------ | --------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.1.4  |
| <a name="requirement_google"></a> [google](#requirement_google)          | >= 4.11.0 |

## Resources

| Name                                                                                                                               | Type     |
| ---------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [google_compute_instance.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |

## Inputs

| Name                                                                              | Description                                    | Type        | Default                                                          | Required |
| --------------------------------------------------------------------------------- | ---------------------------------------------- | ----------- | ---------------------------------------------------------------- | :------: |
| <a name="input_image"></a> [image](#input_image)                                  | startup image                                  | `string`    | n/a                                                              |   yes    |
| <a name="input_name"></a> [name](#input_name)                                     | instance names without deployment count number | `string`    | n/a                                                              |   yes    |
| <a name="input_network_name"></a> [network_name](#input_network_name)             | VPC network name                               | `string`    | n/a                                                              |   yes    |
| <a name="input_subnet_name"></a> [subnet_name](#input_subnet_name)                | VPC subnetwork name                            | `string`    | n/a                                                              |   yes    |
| <a name="input_deployment_count"></a> [deployment_count](#input_deployment_count) | number of instances to deploy                  | `number`    | `1`                                                              |    no    |
| <a name="input_labels"></a> [labels](#input_labels)                               | instance labels                                | `map(any)`  | `{}`                                                             |    no    |
| <a name="input_machine_type"></a> [machine_type](#input_machine_type)             | instance type                                  | `string`    | `"e2-standard-4"`                                                |    no    |
| <a name="input_region"></a> [region](#input_region)                               | region to deploy to                            | `string`    | `"europe-central2"`                                              |    no    |
| <a name="input_startup_script"></a> [startup_script](#input_startup_script)       | instance startup script                        | `string`    | `""`                                                             |    no    |
| <a name="input_tags"></a> [tags](#input_tags)                                     | instance network tags                          | `list(any)` | <pre>[<br> "http",<br> "https",<br> "ssh",<br> "ping"<br>]</pre> |    no    |
| <a name="input_zone"></a> [zone](#input_zone)                                     | zone to deploy -> 'a','b','c'                  | `string`    | `"c"`                                                            |    no    |

## Outputs

| Name                                                                          | Description                                                |
| ----------------------------------------------------------------------------- | ---------------------------------------------------------- |
| <a name="output_deployed_image"></a> [deployed_image](#output_deployed_image) | n/a                                                        |
| <a name="output_deployed_zone"></a> [deployed_zone](#output_deployed_zone)    | n/a                                                        |
| <a name="output_id"></a> [id](#output_id)                                     | unique string identifier that is assigned to a VM instance |
| <a name="output_instance_id"></a> [instance_id](#output_instance_id)          | instance uuid                                              |
| <a name="output_machine_type"></a> [machine_type](#output_machine_type)       | n/a                                                        |
| <a name="output_name"></a> [name](#output_name)                               | n/a                                                        |

## Running

To call this module, include in your tf configuration:

```terraform

module "vm" {
  source       = "../modules/vm"
  name         = "demo-machine"
  network_name = "my-vpc-network-name"
  subnet_name  = "my-vpc-subnet-name"
  image        = data.image
}

```

---

\- maintained by: KJone1

<!-- END_TF_DOCS -->
