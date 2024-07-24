# AWS SQS queue formed
resource "aws_sqs_queue" "queue" {
  name = var.sqs_queue_name
}

resource "aws_dynamodb_table" "table" {
  name         = var.dynamodb_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "User"

  attribute {
    name = "User"
    type = "S"
  }

  tags = {
    Name = var.dynamodb_name
  }
}

output "sqs_queue_url" {
  value = aws_sqs_queue.queue.url
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.table.name
}