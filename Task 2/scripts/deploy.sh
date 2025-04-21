#!/bin/bash
set -e

STACK_NAME="static-site-cfn"
REGION="us-east-1"

echo "Deploying CloudFormation stack..."
aws cloudformation deploy \
  --template-file cloudformation/s3-cloudfront.yml \
  --stack-name $STACK_NAME \
  --region $REGION \
  --capabilities CAPABILITY_NAMED_IAM

BUCKET=$(aws cloudformation describe-stacks \
  --stack-name $STACK_NAME \
  --region $REGION \
  --query "Stacks[0].Outputs[?OutputKey=='BucketName'].OutputValue" \
  --output text)

DIST_ID=$(aws cloudformation describe-stacks \
  --stack-name $STACK_NAME \
  --region $REGION \
  --query "Stacks[0].Outputs[?OutputKey=='DistributionId'].OutputValue" \
  --output text)

echo "Uploading files to S3..."
aws s3 sync static-website/ s3://$BUCKET/

echo "Invalidating CloudFront cache..."
aws cloudfront create-invalidation \
  --distribution-id $DIST_ID \
  --paths "/*"

echo "Done ✅"
