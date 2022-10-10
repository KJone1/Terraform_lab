
module "network" {
  source            = "../modules/network"
  network_name      = "my-main-vpc-network"
  availability_zone = "${var.region}${var.az}" 
}

resource "aws_security_group" "wg_vpn" {
  name        = "wg_vpn_firewall"
  description = "WireGuard VPN firewall rules"
  vpc_id      = module.network.vpc_id

  
  ingress {
    description      = "Allow ssh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    description      = "Allow wg"
    from_port        = 51820
    to_port          = 51820
    protocol         = "udp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    description      = "Allow all egress"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  lifecycle {
    create_before_destroy = true
  }
}