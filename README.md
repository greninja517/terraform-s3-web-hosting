# terraform-s3-web-hosting
This repository contains the terraform code that provisions the necessary resources in aws to host a simple static website.

## How to RUN ?
### 1. Export the AWS Access Keys
export AWS_ACCESS_KEY_ID="<your-access-key>"
export AWS_SECRET_ACCESS_KEY="<your-secret-key>"

### 2. Run the terraform commands
```bash
terraform validate
```
```bash
terraform plan
```
```bash
terraform apply
```

### 3. Click on the WEBISTE-URL displayed on the terminal