resource "aws_route_table" "public" {
    vpc_id     = aws_vpc.main.id 
    route  {
        cidr_block = var.cidr_block_public_rt
        gateway_id = aws_internet_gateway.main.id
    }
    tags = {
        Name = var.Public_rt
    }
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = var.main_igw
  }
}
