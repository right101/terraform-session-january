resource "aws_route_table" "public" {
    vpc_id     = aws_vpc.main.id 
    route = {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.main.id
        subnet_id = aws_subnet.public_subnet_1.id
    }
}
resource "aws_route_table" "public" {
    vpc_id     = aws_vpc.main.id 
    route = {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.main.id
        subnet_id = aws_subnet.public_subnet_2.id
    }
}
resource "aws_route_table" "public" {
    vpc_id     = aws_vpc.main.id 
    route = {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.main.id
        subnet_id = aws_subnet.public_subnet_3.id
    }
}
    tags = {
        Name = "Public_rt"
    }

