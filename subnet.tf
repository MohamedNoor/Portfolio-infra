resource "aws_subnet" "portfolio-subnet" {
  vpc_id                  = "${aws_vpc.portfolio-vpc.id}"
  cidr_block             = "${var.subnet_cidr}"
  map_public_ip_on_launch = true
  availability_zone = "eu-west-1a"
tags = {
    Name = "portfolio subnet"
  }
}
# Creating 2nd subnet 
resource "aws_subnet" "portfolio-subnet1" {
  vpc_id                  = "${aws_vpc.portfolio-vpc.id}"
  cidr_block             = "${var.subnet1_cidr}"
  map_public_ip_on_launch = true
  availability_zone = "eu-west-1b"
tags = {
    Name = "portfolio subnet 1"
  }
}