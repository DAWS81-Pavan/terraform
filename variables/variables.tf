variable "sg_name" {
    default = "allow-sshh"
}

variable "sg_description" {
    default = "allow port number 22 for ssh access"
}

variable "from_port" {
    default = 22
    type    = number
}

variable "to_port" {
    default = 22
    type    = number
}

variable "protocol" {
    default = "tcp"
}

variable "ingress_cidr" {
    default = ["0.0.0.0/0"]
    type    = list(string)
}

variable "tags" {
    type    = map
    default = {
        Name = "backend"
        Project = "expense"
        Component = "backend"
        Environment = "DEV"
        Terraform = "true"
    }
}

variable "ami_id" {
    default    = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    default    = "t3.micro"
}