# AWS Cloud Infrastructure Project

This project consists of two tasks demonstrating full-stack AWS infrastructure deployment for both dynamic and static web hosting using best practices in scalability, security, and automation.

## 🚀 Project Overview

### ✅ Task 1: Scalable WordPress Website Deployment

- Deployed a WordPress website on AWS using EC2 instances within an Auto Scaling Group.
- Used an Application Load Balancer (ALB) to distribute traffic and RDS (MySQL) for the database layer.
- Built the entire architecture using a custom VPC with public and private subnets for improved security.
- Infrastructure was fully automated using AWS CloudFormation.

### ✅ Task 2: Static Website Hosting with S3 and CloudFront

- Created and hosted a custom static website using S3 for storage and CloudFront for secure and fast global delivery.
- Implemented Origin Access Identity (OAI) to ensure S3 content is served only through CloudFront.
- Deployment was scripted for repeatability and infrastructure automation.

## 🛠️ Technologies Used

- **AWS Services**: EC2, RDS (MySQL), S3, CloudFront, ALB, ASG, VPC, IAM
- **Infrastructure as Code**: CloudFormation
- **Automation**: Bash scripts

## 📁 Project Structure

