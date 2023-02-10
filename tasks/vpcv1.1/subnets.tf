resource "aws_subnet" "public_subnet_1" {
  vpc_id     = aws_vpc.main.id  
  cidr_block = var.cidr_block_public_a
  availability_zone = var.availability_zone_a
  tags = {
    Name = format("%s-subnet", var.public-1)
  }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id     = aws_vpc.main.id  
  cidr_block = var.cidr_block_public_b
  availability_zone = var.availability_zone_b            
  tags = {
    Name = format("%s-subnet", var.public-2)
  }
}

resource "aws_subnet" "public_subnet_3" {
  vpc_id     = aws_vpc.main.id   
  cidr_block = var.cidr_block_public_c
  availability_zone = var.availability_zone_c
  tags = {
    Name = format("%s-subnet", var.public-3)
  }
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id     = aws_vpc.main.id   
  cidr_block = var.cidr_block_private_a
  availability_zone = var.availability_zone_a
  tags = {
    Name = format("%s-subnet", var.private-1)
  }
}

resource "aws_subnet" "private_subnet_2" { 
  vpc_id     = aws_vpc.main.id  
  cidr_block = var.cidr_block_private_b
  availability_zone = var.availability_zone_b
  tags = {
    Name = format("%s-subnet", var.private-2)
  }
}

resource "aws_subnet" "private_subnet_3" {
  vpc_id     = aws_vpc.main.id   
  cidr_block = var.cidr_block_private_c
  availability_zone = var.availability_zone_c
  tags = {
    Name = format("%s-subnet", var.private-3)
} 
}
#cv

      #Here I created 3 privite subnets and 3 public subnets assoiated with VPC
       #${var.port_a} #"${var.env}-frontend-instance" # "${var.env}-instance" 
       # half is variable and half is hardcoded and it is in double quotation
       #  Name1 = format("%s-instance", var.env) # dev-instance