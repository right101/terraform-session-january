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
variable "availability_zone_id1" {
    type = string
    description = "this is for AZ-1a"
    default  = "use1-az2"                
}                                          
variable "availability_zone_id2" {
    type = string
    description = "this is for AZ-1b"
    default  = "use1-az4"
}
variable "availability_zone_id3" {
    type = string
    description = "this is for AZ-1c"
    default  = "use1-az6"
}
variable "availability_zone_id4" {
    type = string
    description = "this is for AZ-1a"
    default  = "use1-az2"
}
variable "availability_zone_id5" {
    type = string
    description = "this is for AZ-1b"
    default  = "use1-az4"
}
variable "availability_zone_id6" {
    type = string
    description = "this is for AZ-1c"
    default  = "use1-az6"
}