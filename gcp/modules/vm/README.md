<!-- BEGIN_TF_DOCS -->
# GCP instance configuration

Module to Deploy Google Compute Engine instance.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) |  ~> 1.1.4 |
| <a name="requirement_google"></a> [google](#requirement\_google) |  >= 4.11.0 |

## Resources

| Name | Type |
|------|------|
| [google_compute_instance.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_image"></a> [image](#input\_image) | startup image | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | instance names without deployment count number | `string` | n/a | yes |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | VPC network name | `string` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | VPC subnetwork name | `string` | n/a | yes |
| <a name="input_deployment_count"></a> [deployment\_count](#input\_deployment\_count) | number of instances to deploy | `number` | `1` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | instance labels | `map(any)` | `{}` | no |
| <a name="input_machine_type"></a> [machine\_type](#input\_machine\_type) | instance type | `string` | `"e2-standard-4"` | no |
| <a name="input_region"></a> [region](#input\_region) | region to deploy to | `string` | `"europe-central2"` | no |
| <a name="input_startup_script"></a> [startup\_script](#input\_startup\_script) | instance startup script | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | instance network tags | `list(any)` | <pre>[<br>  "http",<br>  "https",<br>  "ssh",<br>  "ping"<br>]</pre> | no |
| <a name="input_zone"></a> [zone](#input\_zone) | zone to deploy -> 'a','b','c' | `string` | `"c"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_deployed_image"></a> [deployed\_image](#output\_deployed\_image) | n/a |
| <a name="output_deployed_zone"></a> [deployed\_zone](#output\_deployed\_zone) | n/a |
| <a name="output_id"></a> [id](#output\_id) | unique string identifier that is assigned to a VM instance |
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | instance uuid |
| <a name="output_machine_type"></a> [machine\_type](#output\_machine\_type) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |

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