resource "aws_instance" "project" {
  count                  = length(var.instance_name)
  ami                    = data.aws_ami.project.id
  instance_type          = var.instance_name[count.index] == "mysql" ? "t3.small" : "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]

  # tags = {
  #   Name = var.instance_name[count.index]
  # }

  tags = merge(
    var.common_tags,
    {
      Name = var.instance_name[count.index]
    }
  )
}




resource "aws_security_group" "allow_ssh_terraform" {
  name        = "allow-sshh"
  description = "allow port number 22 for ssh access"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = merge(
    var.common_tags,
    {
      Name = "allow-ssh"
    }
  )
}


