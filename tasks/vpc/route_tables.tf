resource "aws_route_table" "public" {
    vpc_id     = aws_vpc.main.id 
    route = {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.main.id
    }
    tags = {
        Name = "Public_rt"
    }
}