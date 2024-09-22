resource "aws_security_group" "allow_ssh_dynamic" {
  name        = "dynamic-demo"
  description = "allow port number 22 for ssh access"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  dynamic "ingress" {
    for_each = var.dynamic_sg
    content {
      from_port   = ingress.value["from_port"]
      to_port     = ingress.value["to_port"]
      protocol    = ingress.value["protocol"]
      cidr_blocks = ingress.value.cidr_blocks
    }
  }

  tags = {
    Name = "dynamic-demo"
  }
}