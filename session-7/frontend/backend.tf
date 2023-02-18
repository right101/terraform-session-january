terraform {
    backend "s3" {
      bucket = "terraform-backend-raya"
      region = "us-east-1"
      key = "session-7/frontend/terraform.tfstate" # where does terraform need to store your file. Path to to Prefix
      dynamodb_table = "terraform-session-sep-state-lock" # Lock Table name. When setting up we need to LockID capital. 

    }
}
