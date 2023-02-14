terraform {
    backend "s3" {
      bucket = "terraform-backend-raya"
      region = "us-east-1"
      key = "session-6/filestructure/dev/terraform.tfstate" 
      dynamodb_table = "terraform-session-sep-state-lock" 
                                                          
    }
}