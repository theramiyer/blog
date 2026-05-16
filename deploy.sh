#!/bin/bash

# As of 16 May 2026, Python@3.13 with AWSCLI@2 is what works. Going with Python@3.14 gives a `libexpat` error. So, use the default Python@3.13 that ships with XCode Command Line Tools. Install AWSCLI v2 on top of it from Amazon's official download.

# Run with `aws-vault exec <profile> -- ./deploy.sh`
# Example: `aws-vault exec hugo -- ./deploy.sh`
# Local environment variables are loaded from `.envrc` (AWS_VAULT_PROFILE, S3_BUCKET, CLOUDFRONT_ID, AWS_DEFAULT_REGION).

# Exit on error
set -e

# Build the site
hugo --minify

# Compress the WASM file
WASM_FILE='public/js/hyphenopoly/patterns/en-gb.wasm'
gzip -k $WASM_FILE
mv "${WASM_FILE}.gz" $WASM_FILE

# Rename .html files (except index.html and 404.html)
find public/ -type f ! -iname 'index.html' ! -iname '404.html' -iname '*.html' -print0 | while read -d $'\0' f; do
  mv "$f" "${f%.html}"
done

# Sync files to S3
aws s3 sync ./public/ s3://$S3_BUCKET/ --delete --cache-control "max-age=31556952" --exclude "*" --include "js/hyphenopoly/patterns/en-gb.wasm" --content-encoding gzip --content-type application/wasm
aws s3 sync ./public/ s3://$S3_BUCKET/ --delete --cache-control "max-age=31556952" --exclude "*" --include "css/*" --include "js/*" --exclude js/hyphenopoly/patterns/en-gb.wasm --include "fonts/*"
aws s3 sync ./public/ s3://$S3_BUCKET/ --delete --exclude "css/*" --exclude "js/*" --exclude "fonts/*"

# Create CloudFront invalidation
aws cloudfront create-invalidation --distribution-id $CLOUDFRONT_ID --paths "/*"
