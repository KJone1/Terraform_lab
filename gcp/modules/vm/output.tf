
output "metadata" {
  description = "Metadata of deployed gcp compute instance"
  value = {
    for instance in google_compute_instance.default:
      trim(instance.name,var.name) => {
        name              = instance.name, 
        id                = instance.id,
        type              = instance.machine_type
        instance_id       = instance.instance_id,
        deployed_image    = instance.boot_disk[0].initialize_params[0].image,
        deployed_zone     = instance.zone
      }
  }
}