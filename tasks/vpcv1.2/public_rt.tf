resource "aws_route_table" "public" {
    vpc_id     = aws_vpc.main.id 
    route  {
        cidr_block = var.cidr_block_rt
        gateway_id = aws_internet_gateway.main.id
    }
    tags = {
        Name = format("%s_rt", var.Public) #var.Public_rt 
    }
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = var.main_igw
  }
}
resource "aws_route_table_association" "task1" {
  subnet_id      = aws_subnet.public_subnet[count.index]
  route_table_id = aws_route_table.public.id
}

