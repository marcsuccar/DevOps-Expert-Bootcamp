resource "aws_vpc" "this" {
  cidr_block           = var.cidr
  enable_dns_hostnames = true
  tags = { Name = "${var.name}-vpc" }
}

output "vpc_id" {
  value = aws_vpc.this.id
}
