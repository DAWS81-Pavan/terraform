variable "instance_name" {
  default = ["mysql", "backend", "frontend"]
}

variable "common_tags" {
  type = map(any)
  default = {
    Project     = "expense"
    Environment = "dev"
    Terraform   = "true"
  }
}

# variable "zone_id" {
#   default = "Z04609323L33TMWTNO2EZ"
# }

# variable "domain_name" {
#   default = "pdevops.online"
# }

variable "environment" {
  default = "prod"
}