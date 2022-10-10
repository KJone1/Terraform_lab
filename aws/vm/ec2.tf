
# ec2            -> https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
# ebs            -> https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ebs_volume
# ebs attachment -> https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/volume_attachment 

module "network" {
  source            = "../modules/network"
  network_name      = "my-main-vpc-network"
  availability_zone = "${var.region}${var.az}" 
}

resource "aws_ebs_volume" "default" {
  count             = var.deployment_count
  availability_zone = "${var.region}${var.az}"
  size              = 30
  tags              = {
    Name        = "ebs-${aws_instance.default[count.index].tags.Name}",
    environment = "dev",
    role        = "test-server",
  }
}

resource "aws_volume_attachment" "ebs_att" {
  count       = var.deployment_count
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.default[count.index].id
  instance_id = aws_instance.default[count.index].id
}

resource "aws_instance" "default" {
  count                       = var.deployment_count
  ami                         = data.aws_ami.ubuntu-us-east1.id
  instance_type               = "t3.small"
  key_name                    = var.pub_key_name
  subnet_id                   = module.network.subnet_id
  associate_public_ip_address = true
  depends_on                  = [module.network.internet_gw]
  vpc_security_group_ids = [
    module.network.sg_wg_vpn.id
  ]
  tags          = {
    Name        = "srv-${count.index + 1}",
    environment = "dev",
    role        = "test-server",
  }
  root_block_device  {
    volume_size = 20
    volume_type = "gp2"
    tags        = {
      Name      = "srv-${count.index + 1}-storage",
  } 
  }
}