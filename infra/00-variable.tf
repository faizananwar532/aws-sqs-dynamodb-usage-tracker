variable "access_key" {
  description = "aws access key"
  sensitive   = true
}

variable "secret_key" {
  description = "aws secret key"
  sensitive   = true
}


variable "region" {
  description = "default region for all aws resources"
  sensitive = true
}

variable "sqs_queue_name" {
    default = "quant_sqs_test2"
}

variable "dynamodb_name" {
    default = "quant_dynamodb_test2"
}
