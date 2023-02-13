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
variable "task_ports" {
    type = list(string)
    description = "List of ports"
    default = ["22", "80", "3306", "443", "20", "23", "25", "21", "110", "53"]
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

