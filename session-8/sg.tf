resource "aws_security_group" "main" {
    name        = "main"
    description = " Allow ssh inbound traffic" # This security group opens all ports from anywhere. TLS - transport layer security
    vpc_id      = "vpc-0045501a6a1a9ed00"

    ingress {
    description      = "TLS from VPC"
    from_port        = 22 # single value
    to_port          = 22 
    protocol         = "tcp" #string, one thing only
    cidr_blocks      = ["0.0.0.0/0"] # list of string
    
  }
  ingress {
    description      = "TLS from VPC"
    from_port        = 80 # single value
    to_port          = 80 
    protocol         = "tcp" #string, one thing only
    cidr_blocks      = ["0.0.0.0/0"] # list of string
    
  }
   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }
}