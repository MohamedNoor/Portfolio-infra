resource "aws_vpc" "portfolio-vpc" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "default"
tags = {
    Name = "portfolio VPC"
  }
}