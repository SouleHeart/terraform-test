resource "aws_vpc" "test" {
  cidr_block = "172.28.0.0/16"
  assign_generated_ipv6_cidr_block = "false"
  instance_tenancy	= "default"

  tags = {
    Name = var.tags
  }
}

resource "aws_subnet" "test-a" {
  vpc_id = aws_vpc.test.id
  cidr_block = "172.28.1.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
	Name = "${var.tags}-subnet"
  }
}

resource "aws_subnet" "test-c" {
  vpc_id = aws_vpc.test.id
  cidr_block = "172.28.2.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
	Name = "${var.tags}-subnet"
  }  
}
