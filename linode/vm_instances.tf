resource "linode_instance" "tftest" {
  count           = 2
  label           = "tf_test.${count.index + 1}"
  image           = "linode/rocky8"
  region          = var.region
  type            = "g6-standard-2"
  # public key for ssh # 
  authorized_keys = [data.linode_sshkey.ssh-Jan2022.ssh_key]
  root_pass       = "bloodyvladi"
  # group         = "group_test"
  tags            = ["tag_test1", "tag_test2"]
  swap_size       = 512
  private_ip      = true
  #  TODO: set up alerts configuration  
}
