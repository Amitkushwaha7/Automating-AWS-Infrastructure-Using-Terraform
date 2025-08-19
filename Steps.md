

# Deployment Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/amitkumar-Github8/Automating-AWS-Infrastructure-Using-Terraform.git
   cd Automating-AWS-Infrastructure-Using-Terraform
   ```2. **Configure AWS credentials**
	Ensure your AWS CLI is configured with appropriate credentials.

3. **Initialize Terraform**
	```bash
	terraform init
	```

4. **Review and customize variables**
	Edit `variable.tf` or create a `terraform.tfvars` file to override defaults as needed.

5. **Plan the deployment**
	```bash
	terraform plan
	```

6. **Apply the configuration**
	```bash
	terraform apply
	```
	Confirm with `yes` when prompted.

7. **Access the application**
	- Find the ALB DNS name in the Terraform output.
	- Open it in your browser to see the deployed web servers.

8. **Destroy resources when done**
	```bash
	terraform destroy
	```

