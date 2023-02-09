resource "aws_security_group" "task_sg" {
    name        = var.name
    description = "Allow inbound traffic" 
    vpc_id      = var.vpc_id

    ingress {
    description      = "this open port ${var.port_a} "
    from_port        = var.port_a 
    to_port          = var.port_a
    protocol         = var.protocol
    cidr_blocks      = [var.cidr_blocks]
    
  }

  ingress {
    description      = "this open port ${var.port_b}"
    from_port        = var.port_b
    to_port          = var.port_b
    protocol         = var.protocol
    cidr_blocks      = [var.cidr_blocks]
    
  }

ingress {
    description      = "this open port ${var.port_c}"
    from_port        = var.port_c
    to_port          = var.port_c
    protocol         = var.protocol
    cidr_blocks      = [var.cidr_blocks]
    
  }

  ingress {
    description      = "this open port ${var.port_d}"
    from_port        = var.port_d
    to_port          = var.port_d
    protocol         = var.protocol
    cidr_blocks      = [var.cidr_blocks]
    
  }
  ingress {
    description      = "this is to open 10 ports"
    from_port        = var.port_e
    to_port          = var.port_f
    protocol         = var.protocol_a
    cidr_blocks      = [var.cidr_blocks]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = [var.cidr_blocks]
   
  }
}