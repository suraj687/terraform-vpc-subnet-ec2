resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
     Name  = "new_vpc"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id               = var.vpc_id
  map_public_ip_on_launch = "true"
  cidr_block           =  "72.31.0.0/25"

  tags = {
    Name  = "public"
  }

}
resource "aws_subnet" "private_subnet" {
vpc_id                 =  var.vpc_id
cidr_block             =  "72.31.0.128/25"

   tags   = {
     Name = "private"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id        = var.vpc_id

  tags   = {
    Name = "main"
  }
}

resource "aws_route_table" "rtb_public" {
  vpc_id        = var.vpc_id
route {
    cidr_block  = "0.0.0.0/0"
    gateway_id  = aws_internet_gateway.gw.id
  }
  tags   = {
    Name = "public_rtb"
  }
}

resource "aws_route_table_association" "rta_subnet_public" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.rtb_public.id
}