<!-- BEGIN_TF_DOCS -->
# GKE configuration

Deploy GKE cluster in GCP.

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
| project | project id | `string` | n/a | yes |
| cluster\_name | GKE cluster name | `string` | `"prime"` | no |
| cluster\_node\_count | GKE cluster node count | `number` | `3` | no |
| cluster\_node\_name | GKE cluster node name | `string` | `"ex"` | no |
| cluster\_node\_type | GKE cluster node machine type | `string` | `"e2-medium"` | no |
| region | region to deploy | `string` | `"europe-central2"` | no |
| zone | zone to deploy -> 'a','b','c' | `string` | `"a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| node\_version | gke nodes Kubernetes version |

## Running

To provision this example, run the following from within this directory:

- `terraform init` to get plugins
- `terraform plan` to dry-run the infrastructure changes
- `terraform apply` to apply the infrastructure changes
- `terraform destroy` to tear down the created infrastructure
- `gcloud container clusters get-credentials {cluster name} --zone {cluster zone}` to update a kubeconfig file with appropriate credentials and endpoint information to point kubectl at a specific cluster in GKE.

---
\- maintained by: [KJone1](https://github.com/KJone1)

<!-- END_TF_DOCS -->
