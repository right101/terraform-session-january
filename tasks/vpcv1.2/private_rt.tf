resource "aws_route_table" "private" {
    vpc_id     = aws_vpc.main.id 
    route {
        cidr_block = var.cidr_block_rt
        nat_gateway_id = aws_nat_gateway.main.id
    }
     tags = {
        Name = format("%s_rt", var.Private) #var.Private_rt
    }
}
resource "aws_nat_gateway" "main" {
  allocation_id = aws_eip.elastic.id
  connectivity_type = "public"
  subnet_id         = aws_subnet.public_subnet.id
  tags = {
    Name = var.main_ngw
  }
}
resource "aws_eip" "elastic" {
  vpc      = true
}
resource "aws_route_table_association" "task" {
  subnet_id      = aws_subnet.private_subnet.id
  route_table_id = aws_route_table.private.id
}


}