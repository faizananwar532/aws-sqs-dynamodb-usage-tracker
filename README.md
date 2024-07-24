# AWS SQS DynamoDB Usage Tracker

This project provides a simple usage tracking system using AWS services. The system consists of two main components:
1. A worker that pulls messages from an SQS queue and updates a DynamoDB database.
2. A server that provides an endpoint to retrieve the usage time for a specific user.

## Features

- Track user service usage time
- Asynchronous processing using SQS
- Persistent storage with DynamoDB
- REST API to query user usage time

## Prerequisites

- Python 3.9
- Docker
- AWS CLI configured with appropriate permissions
- Terraform

## Setup

### 1. Create AWS Resources

1. Create an IAM user. 
2. Generate access keys and secret access key.

### 2. Create secret.tfvars in infra/
```bash
access_key = <???>
secret_key = <???>
```
Replace `<???>` with the keys you created in step 1.

### 3. Configure Environment Variables

Replace all `<???>` placeholders in the `.env` with the actual values.

### 4. Configure aws cli and run push_to_queue.sh script
Replace `<???>` placeholders in the `.push_to_queue.sh` with the actual values.  
Configure AWS CLI then run following script by running this in your terminal.
```bash
sh push_to_queue.sh
```

### 5. Run the Docker Containers in Docker-compose
#### To start run 
```bash
make start
or
docker-compose up -d --build
```

#### To check open your browser
```bash
http://0.0.0.0:5000/user/EU-AIR/time
http://0.0.0.0:5000/user/US-AIR/time
```
#### To stop your Docker env run
```bash
make stop
or
docker-compose down
```

#### To stop your Docker env run
```bash
make stop
or
docker-compose down
```

#### To see docker logs
```bash
make status
or
docker ps
```
