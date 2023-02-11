resource "aws_security_group" "main" {
    name        = "main"
    description = " Allow ssh inbound traffic" # This security group opens all ports from anywhere. TLS - transport layer security
    vpc_id      = "vpc-0045501a6a1a9ed00"
}