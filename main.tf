terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.region_name
}

variable "region_name" {
  type        = string
  description = "deploy the resources"
  default     = "ap-south-1"
}

variable "bucket_prefix" {
  type        = string
  description = "Enter Bucket name here"
  default     = "ca3-bucket-"

}


resource "aws_s3_bucket" "bucket" {

  bucket_prefix = var.bucket_prefix


  tags = {
    Name = "Bucket Created"
  }
}


output "bucket_id" {
  value = resource.aws_s3_bucket.bucket.id
}