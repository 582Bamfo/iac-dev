resource "aws_iam_user" "devops" {
  name = var.name
  
}

resource "aws_s3_bucket" "this_bucket" {
  bucket = var.bucket_name
}