variable "env" {
    type = string
    description = "Indicates the environment"
    default = "task"
}

variable "cidr_block" {
    type = string
    description = "this is for cidr_block"
    default  = "10.0.0.0/16"
}

variable "vpc_id" {
    type = string
    description = "this is for vpc"
    default  = "aws_vpc.main.id"
}
variable "availability_zone" {
    type = string
    description = "this is for AZ-1a"
    default  = "${var.env}-1a"
}
variable "availability_zone" {
    type = string
    description = "this is for AZ-1b"
    default  = "${var.env}-1b"
}
variable "availability_zone" {
    type = string
    description = "this is for AZ-1c"
    default  = "${var.env}-1c"
}