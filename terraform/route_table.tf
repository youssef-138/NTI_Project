resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "RTB"
  }
}

resource "aws_route_table_association" "a-1" {
  subnet_id      = aws_subnet.subnet-1.id
  route_table_id = aws_route_table.route_table.id
}

resource "aws_route_table_association" "a-2" {
  subnet_id      = aws_subnet.subnet-2.id
  route_table_id = aws_route_table.route_table.id
}
