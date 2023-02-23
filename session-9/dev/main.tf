#Terraform modules consist of child and root module. child where declare resouces. Root module call child module, ru terraform commsnds
#Local Module module is in your filesystem
# Remote module = SCM, HTTP URL, Terraform Cloud  or Enterprise Private Registries

module "ec2_instance" {
  source = "../../modules/ec2" # where the child module is
  #################variables################
  env = "dev"
  ami = "ami-0aa7d40eeae50c9a9"
  instance_type = "t2.micro"
  sg = [module.ec2_sg.id]  ## module.module_name.attribute
}
module "ec2_sg" {
  source = "../../modules/sg"
  env = "dev"
}
#you always reference to child module outputs