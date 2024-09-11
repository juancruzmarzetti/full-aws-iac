resource "aws_vpc" "skyshop_vpc" {
  cidr_block = "172.31.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  instance_tenancy = "default"

  tags = {
    Name = "skyshop´s vpc"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.skyshop_vpc.id

  tags = {
    Name = "internet gateway of skyshop´s vpc"
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.skyshop_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "skyshop´s route table"
  }
}

resource "aws_route_table_association" "public_route_assoc" {
  subnet_id      = aws_subnet.subnet_1.id
  route_table_id = aws_route_table.public_route_table.id
}