resource "aws_instance" "roboshop" {
  ami           = data.aws_ami.ourami.id
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  # vpc_security_group_ids = local.sg_id

  tags = {
    Name = "helloworld2"
  }
}

resource "aws_security_group" "allow_all" {
  name        = "allow_all"
  description = "This security group allows traffic from all ports"

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0g
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow-all"
  }

}