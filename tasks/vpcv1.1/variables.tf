# Here variables start with names

variable "env" {
    type = string
    description = "Indicates the environment"
    default = "task"
}
variable "public_subnet_1" {
    type = string
    default = "Public-subnet-1"
}

variable "public_subnet_2" {
    type = string
    default = "Public-subnet-2"   
}

variable "public_subnet_3" {
    type = string 
    default = "Public-subnet-3"
 }

variable "private_subnet_1" {
    type = string
    default = "Private-subnet-1"
}

variable "private_subnet_2" {
    type = string 
    default = "Private-subnet-2"
}

variable "private_subnet_3" {
    type = string 
    default =  "Private-subnet-3"
}

# Here variables start with cider blocks

variable "vpc_cidr_block" {
    type = string
    description = "this is for cidr_block"
    default  = "10.0.0.0/16"
}
variable "cidr_block_public_a" {
    type = string
    description = "this is for cidr_block for public subnet a"
    default  = "10.0.1.0/24"
}
variable "cidr_block_public_b" {
    type = string
    description = "this is for cidr_block for public subnet a"
    default  = "10.0.2.0/24"
}
variable "cidr_block_public_c" {
    type = string
    description = "this is for cidr_block for public subnet a"
    default  = "10.0.3.0/24"
}
variable "cidr_block_private_a" {
    type = string
    description = "this is for cidr_block for public subnet a"
    default  = "10.0.11.0/24"
}
variable "cidr_block_private_b" {
    type = string
    description = "this is for cidr_block for public subnet a"
    default  = "10.0.12.0/24"
}
variable "cidr_block_private_c" {
    type = string
    description = "this is for cidr_block for public subnet a"
    default  = "10.0.13.0/24"
}
#Here variables start with availability zones

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
    default  = "us-east-1c"
}
