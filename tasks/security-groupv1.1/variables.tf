variable "name" {
    type = string
    description = "This is name for security group"
    default  = "Task_sg"
}

variable "vpc_id" {
    type = string
    description = "this is for vpsc"
    default  = "vpc-0045501a6a1a9ed00"
}
variable "port_a" {
    type = string
    description = "this is for ssh"
    default  = "22"
}
variable "port_b" {
    type = string
    description = "this is for http"
    default  = "80"
}
variable "port_c" {
    type = string
    description = "this to open port 3306"
    default  = "3306"
}
variable "port_d" {
    type = string
    description = "this is for https"
    default  = "443"
}
variable "cidr_blocks" {
    type = string
    description = "this is for cidr block"
    default  = "0.0.0.0/0"
}
variable "protocol" {
    type = string
    description = "this is for protocol"
    default  = "tcp"
}
variable "protocol_a" {
    type = string
    description = "this is for protocol"
    default  = "-1"
}

variable "port_e" {
    type = string
    description = "this is for "
    default  = "500"
}
variable "port_f" {
    type = string
    description = "this is for "
    default  = "510"
}
