terraform {
    backend "s3" {
      bucket = "terraform-backend-raya"
      region = "us-east-1"
      key = "session/terraform.tfstate" # where does terraform need to store your file. Path to to Prefix
      dynamodb_table = "terraform-session-sep-state-lock" # Lock Table name. When setting up we need to LockID capital
    }
}
# 1.you cannot useor pass any variables in key. Key most likely hard coded
# 2. you update file frequently
# 