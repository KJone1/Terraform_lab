
# ec2            -> https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
# ebs            -> https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ebs_volume
# ebs attachment -> https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/volume_attachment 

resource "aws_ebs_volume" "default" {
  count             = var.deployment_count
  availability_zone = "${var.region}d"
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
  count         = var.deployment_count
  ami           = data.aws_ami.rocky8-us-east1.id
  instance_type = "t3.small"
  key_name      = "key-082022"
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