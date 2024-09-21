output "instance_ip_addr" {
  value = aws_instance.terraform.private_ip
}