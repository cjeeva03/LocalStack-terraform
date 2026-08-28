bucket       = "dev-tfstate"
key          = "dev/terraform.tfstate"
region       = "us-east-1"
use_lockfile = true
encrypt      = true

access_key                  = "test"
secret_key                  = "test"
skip_credentials_validation = true
skip_metadata_api_check     = true
use_path_style              = true

endpoints = {
  s3  = "http://localhost:4566"
  sts = "http://localhost:4566"
}
