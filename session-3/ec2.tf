resource "aws_instance" "first_ec2" {
  ami           = var.ami 
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.main.id] # a list of strings # dynamic reference
  tags = {  # a map
     Name = var.env
  }
}