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