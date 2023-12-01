# Weasel CRM Infrastructure

## Overview
This project contains Terraform configurations for setting up the infrastructure of Weasel CRM on AWS. It includes configurations for resources like EC2 instances, RDS databases, S3 buckets, and more.

## Prerequisites
- Terraform ">= 0.12.0"
- AWS Account and CLI configured
- Hashicorp/aws "~> 5.0"
- RDS secret (Username and Password) shoud be created in your AWS Secret Manager
- S3 buket for terraform.tfstate (backend) shoud be created in your AWS Account
- DynamoDB shoud be created in your AWS Account

## Setup Instructions
1. **Initialize Terraform:** Run `terraform init` to initialize the working directory.
2. **Variable Configuration:** Configure the required variables in `variable.tf`.
3. **Deployment:** Execute `terraform apply` to deploy the infrastructure.

## Resource Configuration
### AWS Provider
- `provider "aws"`: Configures the AWS provider.

### Terraform Backend
- `terraform.backend "s3"`: Configures S3 backend for state management.

### Database
- `resource "aws_db_instance" "weasel_crm_rds"`: Configures the RDS instance.

### Autoscaling Group
- `resource "aws_autoscaling_group" "weasel_crm_asg"`: Sets up the Auto Scaling group.

### Elastic Load Balancer
- `resource "aws_elb" "weasel_crm_elb"`: Defines the ELB settings.

### Networking
- `resource "aws_vpc" "weasel_crm_vpc"` and related networking resources.

### Security Groups
- `resource "aws_security_group" "weasel_crm_sg"`: Security group for EC2 instances.
- `resource "aws_security_group" "weasel_crm_rds_sg"`: Security group for RDS.

## File Structure
- `main.tf`: Main configuration file.
- `variable.tf`: Variable definitions.
- `asg.tf`: Auto Scaling Group configuration.
- `elb.tf`: Elastic Load Balancer configuration.
- `env.tf`: Environment variables.
- `igw.tf`: Internet Gateway configuration.
- `lt.tf`: Launch Template configuration.
- `network.tf`: Network infrastructure.
- `ngw.tf`: NAT Gateway configuration.
- `rt.tf`: Route Tables configuration.
- `security_group.tf`: Security Group configurations.

## Usage
After deployment, the infrastructure will support the operations of Weasel CRM with specified configurations. Adjust the configurations as per project requirements.

## Contributors
- Viktoriia Bielova

## Certificate
You SSL Certificate 
