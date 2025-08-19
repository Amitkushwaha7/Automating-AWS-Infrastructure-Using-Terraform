#!/bin/bash -e
# User data script for webserver1: installs Apache, sets up a portfolio page, and enables Apache

set -e

echo "Updating package list and installing Apache2..."
apt update && apt install -y apache2 || { echo 'Apache install failed'; exit 1; }

# Get the instance ID using the instance metadata
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)

echo "Installing AWS CLI..."
apt install -y awscli || { echo 'AWS CLI install failed'; exit 1; }

# Download the images from S3 bucket (uncomment and set correct bucket if needed)
# aws s3 cp s3://myterraformprojectbucket2023/project.webp /var/www/html/project.png --acl public-read

echo "Creating HTML portfolio page..."
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
  <title>My Portfolio</title>
  <style>
    @keyframes colorChange {
      0% { color: red; }
      50% { color: green; }
      100% { color: blue; }
    }
    h1 {
      animation: colorChange 2s infinite;
    }
  </style>
</head>
<body>
  <h1>Terraform Project Server 1</h1>
  <h2>Instance ID: <span style="color:green">$INSTANCE_ID</span></h2>
  <p>Hey This Is Amit!</p>
</body>
</html>
EOF

echo "Starting and enabling Apache2..."
systemctl start apache2
systemctl enable apache2