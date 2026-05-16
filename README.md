## Ram's Blog

## Deployment

This repository deploys the generated Hugo site to AWS S3 and invalidates a CloudFront distribution.

### Local deployment using aws-vault

#### Install and configure aws-vault

1. Install `aws-vault` on macOS:
   - `brew install aws-vault`
2. Add your AWS credentials:
   - `aws-vault add hugo`
   - Enter your `AWS Access Key ID` and `AWS Secret Access Key` when prompted.
3. On macOS, `aws-vault` stores credentials in the macOS Keychain by default.
   - If you have iCloud Keychain enabled, those Keychain items can sync across your devices.
   - This means you can use `aws-vault` on another signed-in Mac without retyping the credentials.
4. If you prefer a separate password manager such as Proton Pass, keep the AWS keys there as a backup.
   - Proton Pass is not a native `aws-vault` backend.
   - You can still copy credentials from Proton Pass into `aws-vault add hugo`.

#### Run deployment

1. Store your AWS credentials securely in `aws-vault` under the profile named in `.envrc`.
   - Example profile name: `hugo`
2. Ensure `.envrc` is present and contains the deployment environment variables:
   - `AWS_VAULT_PROFILE=hugo`
   - `AWS_DEFAULT_REGION=ap-south-1`
   - `S3_BUCKET=blog.ramiyer.me`
   - `CLOUDFRONT_ID=E1DZIFYV2F43PB`
3. Allow `direnv` to load `.envrc` if you use it:
   - `direnv allow`
4. Run the deploy script through `aws-vault`:
   - `aws-vault exec hugo -- ./deploy.sh`

### What happens

- `deploy.sh` builds the site with Hugo.
- It compresses the WASM file and renames `.html` files appropriately.
- It syncs the `public/` folder to the configured S3 bucket.
- It creates a CloudFront invalidation for the specified distribution.

### CI deployment

The GitLab CI pipeline in `.gitlab-ci.yml` uses an AWS-enabled runner and requires AWS credentials or role permissions to come from GitLab CI/CD variables or the runner environment.

### Security note

AWS credentials are not stored in the repository. Local deploys use `aws-vault`, and CI deploys should use GitLab secret variables or an IAM role.
