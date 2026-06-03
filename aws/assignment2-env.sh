#!/bin/bash
# Assignment 2 AWS app environment variables
# Upload this file to your EC2 instance and run:
#   source ./assignment2-env.sh
#
# Then start the web app:
#   python3 app.py
#
# Or start workers:
#   python3 -u worker_fixed_size.py
#   python3 -u worker_paragraph_aware.py

# AWS region
export AWS_REGION="us-east-1"

# S3 bucket used for uploaded PDFs
export S3_BUCKET_NAME="REPLACE_WITH_YOUR_S3_BUCKET_NAME"

# SQS queue URLs
# Required for worker scripts.
# The web app does not need these just to upload to S3 and write metadata to RDS.
export FIXED_SIZE_QUEUE_URL="REPLACE_WITH_FIXED_SIZE_QUEUE_URL"
export PARAGRAPH_AWARE_QUEUE_URL="REPLACE_WITH_PARAGRAPH_AWARE_QUEUE_URL"

# PostgreSQL/RDS connection string
# Format:
# postgresql://USERNAME:PASSWORD@RDS_ENDPOINT:5432/DATABASE_NAME
export DATABASE_URL="postgresql://app_user:REPLACE_WITH_PASSWORD@REPLACE_WITH_RDS_ENDPOINT:5432/pdf_rag"

# Optional app settings
export MAX_FILE_SIZE_MB="5"
export SQS_WAIT_TIME_SECONDS="20"
export SQS_VISIBILITY_TIMEOUT="300"
