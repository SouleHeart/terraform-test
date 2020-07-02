resource aws_default_security_group "tfe-poc-sg" {
  vpc_id      = aws_vpc.tfe-poc.id

  ingress {
	protocol = "tcp"
	from_port = 22
	to_port = 22
	cidr_blocks = ["211.60.50.130/32"]		# list of string required
	description = "Megazone Office IP"
  }
  
  egress {
	from_port = 0
	to_port = 0
	protocol = "-1"
	cidr_blocks = ["0.0.0.0/0"]				# list of string required
  }

  tags = {
    Name = var.tags
  }
}