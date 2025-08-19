
# Automating AWS Infrastructure Using Terraform

## Overview
This project automates the deployment of a highly available web application infrastructure on AWS using Terraform. It provisions a VPC, public subnets, EC2 instances, an Application Load Balancer, security groups, and an S3 bucket. User data scripts configure Apache web servers on each instance.

## Architecture Diagram
![Architecture Diagram](AssetsDiagram.jpg)

## Features
- Automated VPC, subnets, and routing
- Secure and tagged resources
- Application Load Balancer with target groups
- Two EC2 web servers with Apache and custom HTML
- S3 bucket for assets
- Parameterized and reusable Terraform code

## Prerequisites
- AWS account and credentials configured
- Terraform installed (v1.0+ recommended)

## Usage
1. Clone this repository:
   ```bash
   git clone https://github.com/amitkumar-Github8/Automating-AWS-Infrastructure-Using-Terraform.git
   cd Automating-AWS-Infrastructure-Using-Terraform
   ```
2. Initialize Terraform:
	```bash
	terraform init
	```
3. Review and customize variables in `variable.tf` or create a `terraform.tfvars` file
4. Plan the deployment:
	```bash
	terraform plan
	```
5. Apply the configuration:
	```bash
	terraform apply
	```
6. Access the web application using the ALB DNS output

## Variables
Key variables (see `variable.tf` for all):
- `aws_region`: AWS region to deploy resources
- `cidr`: VPC CIDR block
- `subnet1_cidr`, `subnet2_cidr`: Subnet CIDRs
- `ami_id`: AMI for EC2 instances
- `instance_type`: EC2 instance type
- `bucket_name`: S3 bucket name

## Outputs
- `loadbalancerdns`: DNS name of the Application Load Balancer
- `webserver1_public_ip`: Public IP of webserver1
- `webserver2_public_ip`: Public IP of webserver2

## Destroying Resources
To remove all resources:
```bash
terraform destroy
```

## Notes
- SSH access is currently open to all IPs (0.0.0.0/0) for simplicity
- User data scripts are in `userdata.sh` and `userdata1.sh`
- Make sure to destroy resources after testing to avoid AWS charges

---
For more details, see the comments in each Terraform file.
