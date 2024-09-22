locals {
  zone_id       = "Z04609323L33TMWTNO2EZ"
  domain_name   = "pdevops.online"
  instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
}