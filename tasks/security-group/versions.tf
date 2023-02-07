terraform {
  required_version = "~> 1.3.7" # Terraform version
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.53.0" # AWS Provider
    }
  }
}

# Terraform = v1.3.7
# AWS Provider = v4.53.0

# Semantic versioning
# v1.3.7
# 1 = major
# 3 = minor
# 7 = patch


# in order to creat network, it needs to start with VPC. After we create VPC , it creates automatically one Route table. 
# then depending how many subnets we needed, we start creating. we associate our VPC with subnet while creating. 
#Here we have to give subnet name, AZ and CIDR block. In my case I am adding 3 public and 3 private subnets:test-public-subnet1, 
#us-east-1a, 10.0.1.0/24; test-public-subnet2, us-east-1b, 10.0.2.0/24;test-public-subnet3, us-east-1c, 10.0.3.0/24
#test-private-subnet1,us-east-1a, 10.0.11.0/24; test-private-subnet2, us-east-1b, 10.0.12.0/24; 
#test-private-subnet3, us-east-1c, 10.0.13.0/24. Then we need to creat one more Route table, Name: test-private-rt, and we need our VPC. 
#Then we need to associate our public/private subnets with public/private route tables. 
#Then we need to create Internet Gateway and give a Name.After it has to be attached with our VPC 
#Then our public Route table needs to be edited with 0.0.0.0/0 with Internet Gateway we created.
#Then we create NAT Gateway, give name and attach any public subnet.If we want Public connectivity type. We also need ellastic IP allocation ID 
#Then we need to edit Private route table and open port 0.0.0.0/0 and attach Nat gateway we created. 