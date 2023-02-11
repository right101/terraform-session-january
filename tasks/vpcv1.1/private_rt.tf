resource "aws_route_table" "private" {
    vpc_id     = aws_vpc.main.id 
    route {
        cidr_block = var.cidr_block_rt
        nat_gateway_id = aws_nat_gateway.main.id
    }
     tags = {
        Name = var.Private_rt
    }
}
resource "aws_nat_gateway" "main" {
  allocation_id = aws_eip.elastic.id
  connectivity_type = "public"
  subnet_id         = aws_subnet.public_subnet_1.id
  tags = {
    Name = var.main_ngw
  }
}
resource "aws_eip" "elastic" {
  vpc      = true
}
