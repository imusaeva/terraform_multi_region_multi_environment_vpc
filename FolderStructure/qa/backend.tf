terraform {
  backend "s3" {
    bucket = "aws-session-may2022-remote-backend"
    key    = "multi-env/qa/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-may2022-state-lock-table" # statelocking can be done by Dynamodb table on AWS. 
  }
}