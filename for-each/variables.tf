variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This is our daily used AMI"
}

variable "instances"{
  default = {
    mongodb = "t3.micro"
    redis   = "t3.micro"
    mysql   = "t3.small"
    rabbitmq = "t3.micro"
  }
}

variable "sg_name" {
  default = "allow_all"
}

variable "sg_description" {
  default = "Allowing all ports from internet"
}

variable "from_port" {
  type    = number
  default = 0
}

variable "to_port" {
  type    = number
  default = 0
}

variable "cidr_blocks" {
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  default = {
    Name = "allow-all"
  }
}

variable "zone_id" {
  default = "Z0057140DV55FUG37SFU"
}

variable "domain_name" {
  default = "bittu27.site"
}