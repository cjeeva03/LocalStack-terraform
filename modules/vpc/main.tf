resource "aws_vpc" "sample_vpc" {
  cidr_block = var.vpc_cidr

  enable_dns_hostnames = true

  tags = {
    Environment = var.environment_vpc
    Author      = var.author
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.sample_vpc.id
  cidr_block              = "10.0.4.0/24"
  map_public_ip_on_launch = true

  tags = {
    Environment = var.environment_vpc
    subnet      = "Public Subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id                  = aws_vpc.sample_vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = false

  tags = {
    Environment = var.environment_vpc
    subnet      = "Private Subnet"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.sample_vpc.id

  tags = {
    Environment = var.environment_vpc
  }
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.sample_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Environment = var.environment_vpc
  }
}

resource "aws_route_table_association" "public_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_rt.id
}
