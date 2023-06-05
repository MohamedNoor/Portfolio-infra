resource "aws_launch_configuration" "portfolio-web" {
  name_prefix = "portfolio-"
image_id = "ami-0e23c576dacf2e3df" 
  instance_type = "t3.micro"
  key_name = "portfolio-key"
security_groups = [ "${aws_security_group.portfolio-sg.id}" ]
  associate_public_ip_address = true
  user_data = "${file("data.sh")}"
lifecycle {
    create_before_destroy = true
  }
}