terraform {
  backend "s3" {
    bucket = "tf-bucket-storing-state-configuration"
    key    = "remote-state-is-here/terraform.tfstate"
    region = "ap-south-1"
  }
}