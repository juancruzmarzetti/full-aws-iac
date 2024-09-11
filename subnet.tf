resource "aws_subnet" "subnet_1" {
  vpc_id     = aws_vpc.skyshop_vpc.id
  cidr_block = "172.31.0.0/20"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"

  tags = {
    Name = "subnet_us_east_1a"
  }
}

resource "aws_subnet" "subnet_2" {
  vpc_id     = aws_vpc.skyshop_vpc.id
  cidr_block = "172.31.16.0/20"
  availability_zone = "us-east-1b"

  tags = {
    Name = "subnet_us_east_1b"
  }
}