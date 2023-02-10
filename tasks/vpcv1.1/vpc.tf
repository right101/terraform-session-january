resource "aws_vpc" "main" {
    vpc_cidr_block = [var.cidr_block]

tags = { 
    Name = var.env
}
}