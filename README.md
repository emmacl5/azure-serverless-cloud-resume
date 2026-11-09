# AWS Serverless Cloud Resume

## Overview
A serverless cloud resume website built to demonstrate practical AWS, Terraform, Python, and DevOps skills.

## Planned Architecture
- Frontend: HTML, CSS, JavaScript
- Hosting: Amazon S3 (private bucket)
- CDN: Amazon CloudFront with Origin Access Control
- API: Amazon API Gateway HTTP API
- Backend: AWS Lambda (Python)
- Database: Amazon DynamoDB
- Infrastructure as Code: Terraform
- CI/CD: GitHub Actions

## Project Structure
- `frontend/` — Resume website
- `backend/` — Python Lambda visitor counter
- `terraform/` — AWS infrastructure configuration

## Project Status
In development — local repository setup.

## Security Goals
- Least-privilege IAM permissions
- Private S3 storage
- No credentials committed to Git
- Temporary AWS credentials for deployment

## Author
Claude Emmanuel Ouamba
