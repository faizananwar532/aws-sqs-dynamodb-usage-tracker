AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_DEFAULT_REGION=
AWS_SQS_QUEUE_URL=
aws sqs send-message --queue-url $AWS_SQS_QUEUE_URL --message-body '{"user":"EU-AIR","minutes":10}'
aws sqs send-message --queue-url $AWS_SQS_QUEUE_URL --message-body '{"user":"US-AIR","minutes":15}'