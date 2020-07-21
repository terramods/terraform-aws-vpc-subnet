variable "aws_profile" {
  type = string
  default = "default"
}

variable "aws_region" {
  type = string
  default = "us-east-1"
}

variable "vpc_id" {
  type = string
}

variable "cidr_blocks" {
  type = list
}

variable "availability_zones" {
  type = list
}