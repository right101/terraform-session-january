# Calling a child module remotely
#GitHub
module "ec2" {
  source = "github.com/right101/terraform-session-january//modules/ec2?ref=v1.0.0"
  env = "dev"
  ami = "ami-0aa7d40eeae50c9a9"
  instance_type = "t2.micro"
}
#Terraform Registry
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "3.18.0"
}
