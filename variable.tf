variable "cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "subnet1_cidr" {
  description = "CIDR block for subnet 1"
  default     = "10.0.0.0/24"
}

variable "subnet2_cidr" {
  description = "CIDR block for subnet 2"
  default     = "10.0.1.0/24"
}

variable "aws_region" {
  description = "AWS region to deploy resources in"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for EC2 instances"
  default     = "ami-04b4f1a9cf54c11d0"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "bucket_name" {
  description = "S3 bucket name for project assets"
  default     = "amit-terraform-2025-project"
}