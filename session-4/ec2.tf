resource "aws_instance" "first_ec2" {
  ami           = data.aws_ami.amazon_linux_2.id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.main.id] # a list of strings # dynamic reference
  tags = {  # a map
     Name = "${var.env}-instance" # half is variable and half is hardcoded and it is in double quotation
     Name1 = format("%s-instance", var.env) # dev-instance
    }
}
resource "aws_instance" "first_ec2_frontend" {
  ami           = data.aws_ami.amazon_linux_2.id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.main.id] # a list of strings # dynamic reference
  tags = {  # a map
     Name = "${var.env}-frontend-instance" # 
     Name1 = format("%s-frontend-instance", var.env) # dev-instance
  }
}