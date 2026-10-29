# Remote state is required for CI: GitHub runners are ephemeral, so local state would be lost.
# Values (bucket, key, region) are passed with -backend-config at `terraform init`.
terraform {
  backend "s3" {}
}
