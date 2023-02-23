<!-- BEGIN_TF_DOCS -->
# GKE configuration

Deploy GKE cluster in GCP.

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

## Resources

| Name | Type |
|------|------|
| [google_container_cluster.prime](https://registry.terraform.io/providers/hashicorp/google/4.11.0/docs/resources/container_cluster) | resource |
| [google_container_node_pool.primary_node_pool](https://registry.terraform.io/providers/hashicorp/google/4.11.0/docs/resources/container_node_pool) | resource |
| [google_container_engine_versions.gke-ver](https://registry.terraform.io/providers/hashicorp/google/4.11.0/docs/data-sources/container_engine_versions) | data source |
| [google_service_account.default_sa](https://registry.terraform.io/providers/hashicorp/google/4.11.0/docs/data-sources/service_account) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project"></a> [project](#input\_project) | project id | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | GKE cluster name | `string` | `"Prime"` | no |
| <a name="input_cluster_node_count"></a> [cluster\_node\_count](#input\_cluster\_node\_count) | GKE cluster node count | `number` | `3` | no |
| <a name="input_cluster_node_name"></a> [cluster\_node\_name](#input\_cluster\_node\_name) | GKE cluster node name | `string` | `"EX"` | no |
| <a name="input_cluster_node_type"></a> [cluster\_node\_type](#input\_cluster\_node\_type) | GKE cluster node machine type | `string` | `"e2-medium"` | no |
| <a name="input_region"></a> [region](#input\_region) | region to deploy | `string` | `"europe-central2"` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | zone to deploy -> 'a','b','c' | `string` | `"a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_node_version"></a> [node\_version](#output\_node\_version) | gke nodes Kubernetes version |

## Running

To provision this example, run the following from within this directory:

- `terraform init` to get plugins
- `terraform plan` to dry-run the infrastructure changes
- `terraform apply` to apply the infrastructure changes
- `terraform destroy` to tear down the created infrastructure
- `gcloud container clusters get-credentials {cluster name} --zone {cluster zone}` to update a kubeconfig file with appropriate credentials and endpoint information to point kubectl at a specific cluster in GKE.

---
\- maintained by: KJone1

<!-- END_TF_DOCS -->