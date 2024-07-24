terraform {
  backend "s3" {
    bucket = "quant-tf-state-test"
    key    = "quant.tfstate"
    region = "us-east-2"
  }
}