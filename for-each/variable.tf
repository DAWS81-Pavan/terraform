variable "instances" {
  default = {
    mysql    = "t3.small"
    backend  = "t3.micro"
    frontend = "t3.micro"
  }
}

variable "zone_id" {
  default = "Z04609323L33TMWTNO2EZ"
}

variable "domain_name" {
  default = "pdevops.online"
}