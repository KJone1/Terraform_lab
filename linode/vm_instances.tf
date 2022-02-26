resource "linode_instance" "tftest" {
  count           = var.deployment_count
  label           = "tf_test.${count.index + 1}"
  # use latest custom image made with packer stored in linode
  image           = data.linode_images.latest_image.images[0].id
  # use "clean image" from linode
  # image           = "linode/rocky8"                             
  region          = var.region
  type            = "g6-standard-2"
  # public key for ssh # 
  authorized_keys = [data.linode_sshkey.ssh-Jan2022.ssh_key]
  root_pass       = "testpasstfdemo"
  # group         = "group_test"
  tags            = ["tag_test1", "tag_test2"]
  swap_size       = 2048   # 2GB swap
  private_ip      = true
  # alerts configuration # 
  alerts {
    cpu            = 90    # 90 %
    io             = 10000 # 10k IOPS
    network_in     = 10    # 10 Mb/s
    network_out    = 10    # 10 Mb/s
    transfer_quota = 80    # 80 %
  } 
  watchdog_enabled = true
}
