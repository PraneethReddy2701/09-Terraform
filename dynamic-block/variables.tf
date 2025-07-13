variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This is our daily used AMI"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ec2_tags" {
  type = map(string)
  default = {
    Name    = "Helloworld"
    Purpose = "variables-practice"
  }
}

variable "sg_name" {
  default = "allow_all"
}

variable "sg_description" {
  default = "Allowing all ports from internet"
}

variable "ingress_ports" {
  default = [
    {
      from_port = 22
      to_port   = 22
    },
    {
      from_port = 80
      to_port   = 80
    },
    {
      from_port = 8080
      to_port   = 8080
    },
    {
        from_port = 0
        to_port = 0
    }
  ]
}

variable "egress_ports" {
  default = [
    {
      from_port = 22
      to_port   = 22
    },
    {
      from_port = 80
      to_port   = 80
    },
    {
      from_port = 8080
      to_port   = 8080
    },
    {
        from_port = 0
        to_port = 0
    }
  ]
}

variable "cidr_blocks" {
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  default = {
    Name = "allow-all"
  }
}