resource "aws_subnet" "public_subnet_1" {
  vpc_id     = var.vpc_id  
  cidr_block = "10.0.1.0/24"
  availability_zone_id1 = "var.availability_zone_id1"
  tags = {
    Name = "Public-subnet-1"
  }
}
resource "aws_subnet" "public_subnet_2" {
  vpc_id     = var.vpc_id    
  cidr_block = "10.0.2.0/24"
  availability_zone_id2 = "var.availability_zone_id2"            
  tags = {
    Name = "Public-subnet-2"
  }
}

resource "aws_subnet" "public_subnet_3" {
  vpc_id     = var.vpc_id    
  cidr_block = "10.0.3.0/24"
  availability_zone_id3 = "var.availability_zone_id3"
  tags = {
    Name = "Public-subnet-3"
  }
}
resource "aws_subnet" "private_subnet_1" {
  vpc_id     = var.vpc_id    
  cidr_block = "10.0.11.0/24"
  availability_zone_id4 = "var.availability_zone_id4"
  tags = {
    Name = "Private-subnet-1"
  }
}
resource "aws_subnet" "private_subnet_2" { 
  vpc_id     = var.vpc_id    
  cidr_block = "10.0.12.0/24"
  availability_zone_id5 = "var.availability_zone_id5"
  tags = {
    Name = "Private-subnet-2"
  }
}
resource "aws_subnet" "private_subnet_3" {
  vpc_id     = var.vpc_id    
  cidr_block = "10.0.13.0/24"
  availability_zone_id6 = "var.availability_zone_id6"
  tags = {
    Name = "Private-subnet-3"
} 
}


      #Here I created 3 privite subnets and 3 public subnets assoiated with VPC
       #${var.port_a} #"${var.env}-frontend-instance" # "${var.env}-instance" 
       # half is variable and half is hardcoded and it is in double quotation
       #  Name1 = format("%s-instance", var.env) # dev-instance