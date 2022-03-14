
output "instance_metadata" {
  description = "Metadata of deployed gcp compute instance"
  value = {
    for instance in google_compute_instance.default:
        instance.name => {deployed_image    = instance.boot_disk[*].initialize_params[*].image,
                          deployed_zone     = instance.zone,
                          status            = instance.current_status}
  }
}
