# AWS Region
variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
}

# EC2 instance details
variable "ami" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "The name of the key pair to use for the instance"
  type        = string
}

variable "security_group_ids" {
  description = "The Security Group IDs for the EC2 instance"
  type        = list(string)
}

variable "instance_name" {
  description = "The name to tag the EC2 instance"
  type        = string
}

# S3 bucket details
variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "s3_bucket_acl" {
  description = "The ACL (Access Control List) for the S3 bucket"
  type        = string
  default     = "private"
}

variable "s3_bucket_tag" {
  description = "Tag for the S3 bucket"
  type        = string
}
