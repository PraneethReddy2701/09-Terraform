variable "ami_id"{
    type    = string
    default = "ami-09c813fb71547fc4f"
    description = "This is our daily used AMI"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "ec2_tags" {
    type = map(string)
    default = {
        Name = "Helloworld"
        Purpose = "variables-practice"
    }  
}

variable "sg_name" {
    default = "allow_all"
}

variable "sg_description" {
    default = "Allowing all ports from internet"
}

variable "from_port" {
    type = number
    default = 0
}

variable "to_port" {
    type = number
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