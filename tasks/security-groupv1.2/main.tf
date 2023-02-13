resource "aws_security_group" "task_sg" {
    name        = var.name
    description = "Allow inbound traffic" 
    vpc_id      = var.vpc_id
}
resource "aws_security_group_rule" "ingress" {
  count = length(var.task_ports) # it will count legth of ports in the list in variables.tf
  type              = "ingress"
  to_port           = element( var.task_ports, count.index) #22,80,3306
  protocol          = var.protocol
  from_port         = element( var.task_ports, count.index) #22,80,3306
  security_group_id = aws_security_group.task_sg.id
  cidr_blocks       = [var.cidr_blocks]
}
resource "aws_security_group_rule" "egress" {
  type              = "egress"
  to_port           = 0
  protocol          = "-1"
  from_port         = 0
  security_group_id = aws_security_group.task_sg.id
  cidr_blocks       = [var.cidr_blocks]
}
# count = 2 
# count.index = 0,1

#count = 5
#count = 0,1,2,3,4,
   