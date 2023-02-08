resource "aws_nat_gateway" "main" {
  allocation_id = aws_eip_association.elastic.id
  connectivity_type = "public"
  subnet_id         = aws_subnet.public_subnet_1.id
  tags = {
    Name = "main"
  }
}