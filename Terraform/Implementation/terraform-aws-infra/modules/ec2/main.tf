
resource "aws_launch_template" "web_server" {
  name_prefix = "web-server"
  image_id = "ami-0c55b159cbfafe1f0"
  instance_type = "t3.micro"
  user_data = filebase64("user_data.sh")
}

resource "aws_autoscaling_group" "web_asg" {
  vpc_zone_identifier = [var.subnet_id]
  desired_capacity = 2
  max_size = 4
  min_size = 2
  launch_template {
    id = aws_launch_template.web_server.id
    version = "$Latest"
  }
}
