# Input Variables

variable "instance_type" {
    type = string
    description = "This is instance type for EC2 instances"
    default  = "t2.micro"
}
variable "env" {
    type = string
    description = "Indicates the environment"
    default = "dev"
}
variable "tags" {
    type = map 
    default = {
        Name = "development"
    }
}