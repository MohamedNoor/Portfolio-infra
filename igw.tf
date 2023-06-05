resource "aws_internet_gateway" "portfolio-gateway" {
  vpc_id = "${aws_vpc.portfolio-vpc.id}"
}