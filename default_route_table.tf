resource aws_default_route_table "default_route" {
  default_route_table_id = aws_vpc.tfe-poc.default_route_table_id

  tags = {
    Name = var.tags
  }
}