init-dev:
	terraform init -backend-config=dev-backend.tfvars -reconfigure

init-prod:
	terraform init -backend-config=prod-backend.tfvars -reconfigure
