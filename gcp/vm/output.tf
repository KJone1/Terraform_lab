
output "instance_metadata" {
  description = "Metadata of deployed gcp compute instance"
  value = {
    for instance in google_compute_instance.default:
        instance.name => {deployed_image    = instance.boot_disk[0].initialize_params[0].image,
                          deployed_zone     = instance.zone,
                          type              = instance.machine_type}
  }
}