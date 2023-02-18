# First we need to specify launch_configuration, launch template or mixed_instances_policy
# Then ASG created
resource "aws_launch_template" "task_template" {
  name          = "aws-${var.team}-${var.env}-${var.app}-launch_template-${var.index}"
  image_id      = data.aws_ami.amazon_linux_2.id
  instance_type = var.instance_type
}

resource "aws_autoscaling_group" "task_asg" {
  name               = "aws-${var.team}-${var.env}-${var.app}-task_asg-${var.index}"  
  availability_zones = element(var.availability_zones, 3)
  desired_capacity   = 2
  max_size           = 3
  min_size           = 2

  launch_template {
    id      = aws_launch_template.task_template.id
    version = "$Latest"
  }
}
