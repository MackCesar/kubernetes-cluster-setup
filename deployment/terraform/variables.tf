variable "aws_region" {
  description = "The AWS region to create resources in"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "The type of instance to create"
  default     = "t2.micro"
}
