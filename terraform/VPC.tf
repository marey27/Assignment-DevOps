resource "aws_vpc" "dev" {
  
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "dev"
  }
}