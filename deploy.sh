#!/bin/bash
set -e

cd "$(dirname "$0")"

echo "Syncing public/ to S3..."
aws s3 sync public/ s3://xczimi.com --delete

echo "Invalidating CloudFront cache..."
DISTRIBUTION_ID=$(tofu -chdir=infrastructure output -raw cloudfront_distribution_id)
aws cloudfront create-invalidation \
  --distribution-id "$DISTRIBUTION_ID" \
  --paths "/*" \
  --output text

echo "Done!"
