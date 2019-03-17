variable "ami_id" {
    description = "The ami id from which we want an instance"
    default = "ami-0ccfb82eb6753816c"
}

variable "AWS_ACCESS_KEY" {
    description = "Your IAM access key"
}

variable "AWS_SECRET_KEY" {
    description = "Your IAM secret key"
}

variable "AWS_REGION" {
    default = "ap-south-1"
}
variable "PATH_TO_PRIVATE_KEY" {
  default = "/Users/nehanikam/.ssh/id_rsa"
}
variable "PATH_TO_PUBLIC_KEY" {
  default = "/Users/nehanikam/.ssh/id_rsa.pub"
}