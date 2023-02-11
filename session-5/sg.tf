resource "aws_security_group" "main" {
    name        = "main"
    description = " Allow ssh inbound traffic" # This security group opens all ports from anywhere. TLS - transport layer security
    vpc_id      = "vpc-0045501a6a1a9ed00"
}
resource "aws_security_group_rule" "ingress" {
  type              = "ingress"
  to_port           = element( var.ports, 0) #22
  protocol          = "tcp"
  from_port         = element( var.ports, 0) #22
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