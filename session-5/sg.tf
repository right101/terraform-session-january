resource "aws_security_group" "main" {
    name        = "main"
    description = " Allow ssh inbound traffic" # This security group opens all ports from anywhere. TLS - transport layer security
    vpc_id      = "vpc-0045501a6a1a9ed00"
    tags = {
    Name = "main_sg"
  }
}
resource "aws_security_group_rule" "ingress" {
  count = 2
  type              = "ingress"
  to_port           = element( var.ports, count.index) #22
  protocol          = "tcp"
  from_port         = element( var.ports, count.index) #22
  security_group_id = aws_security_group.main.id
  cidr_blocks       = ["0.0.0.0/0"]
}
resource "aws_security_group_rule" "egress" {
  type              = "egress"
  to_port           = 0
  protocol          = "-1"
  from_port         = 0
  security_group_id = aws_security_group.main.id
  cidr_blocks       = ["0.0.0.0/0"]
}
# count = 2 
# count.index = 0,1

#count = 5
#count = 0,1,2,3,4,