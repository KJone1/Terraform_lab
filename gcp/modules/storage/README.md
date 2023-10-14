<!-- BEGIN_TF_DOCS -->
# GCP disk configuration

Module to Deploy Google Compute Engine disk.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) |  >= 1.1.4 |
| <a name="requirement_google"></a> [google](#requirement\_google) |  >= 4.11.0 |

## Resources

| Name | Type |
|------|------|
| [google_compute_attached_disk.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_attached_disk) | resource |
| [google_compute_disk.storage](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_disk) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attach_to"></a> [attach\_to](#input\_attach\_to) | id of instance to attach disk | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | disk name | `string` | n/a | yes |
| <a name="input_sizeGB"></a> [sizeGB](#input\_sizeGB) | disk size in GB | `number` | n/a | yes |
| <a name="input_block_sizeBYTES"></a> [block\_sizeBYTES](#input\_block\_sizeBYTES) | physical block size in bytes | `number` | `4096` | no |
| <a name="input_deployment_count"></a> [deployment\_count](#input\_deployment\_count) | number of disks to deploy | `number` | `1` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | disk labels | `map(any)` | <pre>{<br>  "app": "playground",<br>  "environment": "dev",<br>  "role": "server-storage"<br>}</pre> | no |
| <a name="input_type"></a> [type](#input\_type) | disk type | `string` | `"pd-ssd"` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | zone to deploy -> 'a','b','c' | `string` | `"c"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_block_size"></a> [block\_size](#output\_block\_size) | Disk block size, defaults to 4096 |
| <a name="output_deployed_zone"></a> [deployed\_zone](#output\_deployed\_zone) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_self_link"></a> [self\_link](#output\_self\_link) | self\_link is a URL that points to the instance's metadata and configuration |
| <a name="output_size"></a> [size](#output\_size) | Disk size in GB |
| <a name="output_type"></a> [type](#output\_type) | n/a |

## Running

To call this module, include in your tf configuration:

```terraform

module "disk" {
  source       = "../modules/storage"
  name         = "demo-disk"
  sizeGB       = 20
  attach_to    = google_compute_instance.default
}

```

---
\- maintained by: [KJone1](https://github.com/KJone1)

<!-- END_TF_DOCS -->
