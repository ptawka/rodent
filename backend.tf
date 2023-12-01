terraform {
  backend "s3" {
    bucket         = "weasel-crm-state-bucket" #name of your bucket
    key            = "path/to/my/tfstate"
    region         = "us-east-1"
    dynamodb_table = "weasel-crm-dynamodb" #name of your DynamoDB
    encrypt        = true
  }
}