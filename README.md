# terraform-s3-web-hosting
This repository contains the terraform code that provisions the necessary resources in aws to host a simple static website in S3 Bucket with necessary bucket policies for public access.

## How to RUN ?

### 1. Export the AWS Access Keys
First step is to configure the AWS Credentials so that terraform can use it to provision the necessary resources.
```bash
export AWS_ACCESS_KEY_ID="<your-access-key>"
export AWS_SECRET_ACCESS_KEY="<your-secret-key>"
```

### 2. Run the terraform commands
`terraform validate` command checks if there is any syntax error or not
```bash
terraform validate
```
`terraform plan` command gives the overview of what will happen like what resources will be created, updated or deleted after running the `apply` command
```bash
terraform plan
```
`terraform apply` creates the resources as mentioned in the terraform configuration.
```bash
terraform apply # --auto-approve (terraform doesn't asks for confirmation)
```

### 3. Click on the WEBISTE-URL displayed on the terminal
And, now you can access the website hosted on S3.