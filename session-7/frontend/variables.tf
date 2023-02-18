variable "instance_type" {
    type = string
    description = "This is instance type for EC2 instances"
    default  = "t2.micro"
}
variable "availability_zones" {
    type = list(string)
    description = "this is for AZs"
    default  = ["us-east-1a", "us-east-1b", "us-east-1c"]                
}         

variable "env" {
    type = string
    default = "dev"
}
variable "team" {
    type = string
    default = "devops"
}
variable "app" {
    type = string
    default = "gifrun"
}
variable "index" {
    type = string
    default = "0"
}
variable "managed_by" {
    type = string
    default = "terraform"
}
variable "owner" {
    type = string
    default = "Raya"
}