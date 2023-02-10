resource "aws_vpc" "main" {
    vpc_cidr_block = var.vpc_cidr_block

tags = { 
    Name = var.env
}
}