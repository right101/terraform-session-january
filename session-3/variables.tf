# Input Variables

variable "instance_type" {
    type = string
    description = "This is instance type for EC2 instances"
    default  = "t2.micro"
}
variable "ami" {
    type = string
    description = "AMI for the EC2 instance"
    default = "ami-0aa7d40eeae50c9a9"
}
variable "env" {
    type = string
    description = "Indicates the environment"
    default = "dev"
}