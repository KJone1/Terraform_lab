# Homelab Terraform

Terraform scripts for my home lab

## - **Prerequisites**

- Linode provider
  - Generate linode access token and export as env var `TF_VAR_LINODE_TOKEN`
  - Use `AWS_ACCESS_KEY_ID` environment variable for s3 backend access key.
  - Use `AWS_SECRET_ACCESS_KEY` environment variable for s3 backend secret key.
  - optional for backend keys :
    - AWS shared credentials file (e.g. ~/.aws/credentials)
    - AWS shared configuration file (e.g. ~/.aws/config)

- GCP provider
  - Create a Project
  - Generate Service Account keys

---
 \- maintained by: KJone
