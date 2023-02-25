# Calling a child module remotely

module "ec2" {
  source = "github.com/right101/terraform-session-january/modules/ec2"
  env = "dev"
  ami = "ami-0aa7d40eeae50c9a9"
  instance_type = "t2.micro"
}
