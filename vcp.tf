resource aws_vpc "tfe-poc" {
  cidr_block = "172.27.0.0/16"
  assign_generated_ipv6_cidr_block = "false"
  instance_tenancy	= "default"

  tags = {
    Name = var.tags
  }
}

resource "aws_subnet" "tfe-poc-2a" {
  vpc_id = aws_vpc.test.id
  cidr_block = "172.27.1.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
	Name = "${var.tags}-subnet"
  }
}

resource "aws_subnet" "tfe-poc-2c" {
  vpc_id = aws_vpc.test.id
  cidr_block = "172.27.2.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
	Name = "${var.tags}-subnet"
  }  
}
