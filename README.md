# terraform-s3-web-hosting
This repository contains the terraform code that provisions the necessary resources in aws to host a simple static website in S3 Bucket.

## How to RUN ?
### 1. Export the AWS Access Keys
```bash
export AWS_ACCESS_KEY_ID="<your-access-key>"
export AWS_SECRET_ACCESS_KEY="<your-secret-key>"
```

### 2. Run the terraform commands
Check if there is any syntax error or not
```bash
terraform validate
```
Gives the overview of what will happen like what resources will be created, updated or deleted after running the `apply` command
```bash
terraform plan
```
Creates the resources as mentioned in the configuration/code.
```bash
terraform apply # --auto-approve (terraform doesn't asks for input)
```

### 3. Click on the WEBISTE-URL displayed on the terminal