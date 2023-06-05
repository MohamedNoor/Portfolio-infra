resource "aws_elb" "portfolio_elb" {
  name = "web-elb"
  security_groups = [
    "${aws_security_group.portfolio-sg1.id}"
  ]
  subnets = [
    "${aws_subnet.portfolio-subnet.id}",
    "${aws_subnet.portfolio-subnet1.id}"
  ]
cross_zone_load_balancing   = true
health_check {
    healthy_threshold = 2
    unhealthy_threshold = 2
    timeout = 3
    interval = 30
    target = "HTTP:80/"
  }
listener {
    lb_port = 80
    lb_protocol = "http"
    instance_port = "80"
    instance_protocol = "http"
  }
}