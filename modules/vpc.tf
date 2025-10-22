resource "aws_vpc" "My_vpc" {
  cidr_block           = var.cidr_block

  tags = {
    Name        = var.vpc_name    

  }
}