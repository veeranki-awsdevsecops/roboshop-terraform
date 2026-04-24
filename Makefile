dev-init:
	git pull
	rm -rf .terraform/terraform.tfstate
	terraform init -backend-config=./environments/dev/state.tfvars

dev-plan:
	terraform plan -var-file=./environments/dev/main.tfvars

dev-apply: dev-init
	terraform apply -auto-approve -var-file=./environments/dev/main.tfvars

prod-init:
	git pull
	rm -rf .terraform/terraform.tfstate
	terraform init -backend-config=./environments/prod/state.tfvars

prod-plan:
	terraform plan -var-file=./environments/dev/main.tfvars

prod-apply: prod-init
	terraform apply -auto-approve -var-file=./environments/dev/main.tfvars
