terraform {
  backend "s3" {
    bucket         = "salesforce-poc582"  # Replace with your actual S3 bucket name
    key            = "devop/terraform/state.tfstate"   # Path inside the bucket where state is stored
    region         = "eu-west-2"                  # AWS region of the S3 bucket
  }
}