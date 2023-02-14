terraform {
    backend "s3" {
      bucket = "terraform-backend-raya"
      region = "us-east-1"
      key = "session-6/filestructure/dev/terraform.tfstate" 
      dynamodb_table = "terraform-session-sep-state-lock" 
                                                          
    }
}

#if you want to isolate infra and reuse your configuration files, you must isolate backend
#Isolating backend(terraform.tfstate) = Isolating environment
# 1 backend at the time
# No variables in key of Backend