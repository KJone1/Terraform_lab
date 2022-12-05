
output "instance_metadata" {
  description = "Metadata of deployed gcp compute instance"
  value = {
    for instance in module.vm[*].metadata.output:
        instance.name => instance...
  }
}