resource "aws_security_group" "first_sg" {
    name        = "allow_http, allow_ssh, allow_https, allow_mysql"
    description = "Allow http, ssh, https, mysql inbound traffic" # This security group opens all ports from anywhere. TLS - transport layer security
    vpc_id      = "vpc-0045501a6a1a9ed00"

    ingress {
    description      = "TLS from VPC"
    from_port        = 80 
    to_port          = 80 
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  ingress {
    description      = "TLS from VPC"
    from_port        = 443 
    to_port          = 443 
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

ingress {
    description      = "TLS from VPC"
    from_port        = 22 
    to_port          = 22 
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  ingress {
    description      = "TLS from VPC"
    from_port        = 3306 
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }

  tags = {
    Name = "allow_tls"
  }
}