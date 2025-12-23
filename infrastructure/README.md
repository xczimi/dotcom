# xczimi.com Infrastructure

This Terraform configuration sets up S3 + CloudFront hosting for xczimi.com and www.xczimi.com.

## Architecture

- **S3 Buckets**: 
  - `xczimi.com` - Main website content
  - `www.xczimi.com` - Redirects to main domain
- **CloudFront**: Global CDN with SSL certificates
- **Route53**: DNS records for both domains
- **ACM**: SSL certificates managed in us-east-1

## Prerequisites

1. AWS CLI configured with `xczimi` profile
2. Route53 hosted zone for `xczimi.com` already exists
3. Terraform >= 1.0 installed

## Deployment

```bash
# Initialize Terraform
terraform init

# Plan the deployment
terraform plan

# Apply the configuration
terraform apply
```

## Post-Deployment

1. Upload website files to the S3 bucket:
   ```bash
   aws s3 sync ../ s3://xczimi.com --exclude "infrastructure/*" --exclude ".git/*" --profile xczimi
   ```

2. Invalidate CloudFront cache when updating content:
   ```bash
   aws cloudfront create-invalidation --distribution-id <DISTRIBUTION_ID> --paths "/*" --profile xczimi
   ```

## Cost Optimization

- **CloudFront**: PriceClass_100 (US, Canada, Europe only)
- **S3**: Standard storage class
- **Route53**: $0.50/month for hosted zone + queries
- **ACM**: Free SSL certificates

Expected monthly cost: < $1.00 for low traffic

## Security Features

- HTTPS-only access (HTTP redirects to HTTPS)
- Origin Access Control (OAC) for S3 access
- Server-side encryption on S3
- Modern TLS protocols only (TLSv1.2+)