variable "env" {
    type = string
    description = "Indicates the environment"
    default = "task"
}

variable "vpc_cidr_block" {
    type = string
    description = "this is for cidr_block"
    default  = "10.0.0.0/16"
}

variable "vpc_id" {
    type = string
    description = "this is for vpc"
    default  = "aws_vpc.main.id"
}
variable "availability_zone_a" {
    type = string
    description = "this is for AZ-1a"
    default  = "us-east-1a"                
}                                          
variable "availability_zone_b" {
    type = string
    description = "this is for AZ-1b"
    default  = "us-east-1b"
}
variable "availability_zone_c" {
    type = string
    description = "this is for AZ-1c"
    default  = "us-east-1a"
}
variable "availability_zone_d" {
    type = string
    description = "this is for AZ-1a"
    default  = "us-east-1a"
}
variable "availability_zone_e" {
    type = string
    description = "this is for AZ-1b"
    default  = "us-east-1a"
}
variable "availability_zone_f" {
    type = string
    description = "this is for AZ-1c"
    default  = "us-east-1a"
}