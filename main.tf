resource "aws_iam_user" "devops" {
  name = var.name
}

resource "aws_ecr_repository" "jenkins-repo" {
  name                 = var.ecr_name
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}