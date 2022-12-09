# GCP disk configuration

 Module to Deploy Google Compute Engine disk.

## Inputs

| Name | Description  | Type | Default | Required |
| ------------ | ------------ | ------------ | ------------ | ------------ |
|  name |  disk name  |  string  |  n/a | yes  |
| sizeGB | disk size in GB | int | n/a | yes |
| deployment_count | number of disks to deploy | int | 1 | no |
| block_sizeBYTES | disk block size in bytes | int | 4096 | no |
| zone | zone to deploy to | string | "c" | no |
| type | disk type | string | "pd-ssd" | no |
| labels | instance labels | map | {"environment"="dev" <br>"role"="server-storage"<br> "app"="playground"}  | no |

## Outputs

| Name  | Description  |
| ------------ | ------------ |
| id |  unique string identifier that is assigned to a disk instance |
| name |  disk name |
| self_link | URL that points to the instances metadata |
| deployed_zone | disk location |
| size | disk size |
| block_size | physical block size in bytes |
| type | disk type |

## Running

To call this module, include in your tf configuration:

```terraform

module "disk" {
  source       = "../modules/storage"
  name         = "demo-disk"
  sizeGB       = 20
}

```
