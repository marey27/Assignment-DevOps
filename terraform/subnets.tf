## public subnet
resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.dev.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public"
  }
}

## private subnet
resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.dev.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "private"
  }
}


