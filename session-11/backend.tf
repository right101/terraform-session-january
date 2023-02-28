terraform {
    backend "s3" {
      bucket = "terraform-backend-raya"
      region = "us-east-1"
      key = "terraform.tfstate" # where does terraform need to store your file. Path to to Prefix
      dynamodb_table = "terraform-session-sep-state-lock" # Lock Table name. When setting up we need to LockID capital. 
      workspace_key_prefix = "session-11"
    }
}
#Currently: default
#backend file path:session-11/terraform.tfstate

#Switch:dev
#backend file path: session-11/dev/terraform.tfstate

#when you use terraform workspace, it creates a terraform.tfstate in a following path
#workspace_key_prefix/workspace_name/key
