
resource "aws_subnet" "public_subnet" {
  count = length(var.public_subnet_cidr_blocks )
  vpc_id     = aws_vpc.main.id  
  cidr_block = element(var.public_subnet_cidr_blocks, count.index)
  availability_zone = element(var.availability_zones, count.index)
  tags = {
    Name = format("%s-public-", var.subnet)
  }
}



resource "aws_subnet" "private_subnet" {
  count = length(var.private_subnet_cidr_blocks )
  vpc_id     = aws_vpc.main.id  
  cidr_block = element(var.private_subnet_cidr_blocks, count.index)
  availability_zone = element(var.availability_zones, count.index)
  tags = {
    Name = format("%s-private-", var.subnet)
  }
}




      #Here I created 3 privite subnets and 3 public subnets assoiated with VPC
       #${var.port_a} #"${var.env}-frontend-instance" # "${var.env}-instance" 
       # half is variable and half is hardcoded and it is in double quotation
       #  Name1 = format("%s-instance", var.env) # dev-instance