variable "name" {
  type = string
  default = "Clonersource"
}

variable "bucket_name" {
  default = "we-are-learning-jenkins"
}

variable "ecr_name" {
  type = string
  default = "jenkins-repo"
}