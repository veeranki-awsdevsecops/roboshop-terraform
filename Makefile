dev-init:
	git pull
	rm -rf .terraform/terraform.tfstate
	terraform init -backend-config=./environments/dev/state.tfvars

dev-plan:
	terraform plan -var-file=./environments/dev/main.tfvars

dev-apply: dev-init
	terraform apply -auto-approve -var-file=./environments/dev/main.tfvars -var token=$(token)

dev-destroy: dev-init
	terraform destroy -auto-approve -var-file=./environments/dev/main.tfvars -var token=$(token)



prod-init:
	git pull
	rm -rf .terraform/terraform.tfstate
	terraform init -backend-config=./environments/prod/state.tfvars

prod-plan:
	terraform plan -var-file=./environments/dev/main.tfvars

prod-apply: prod-init
	terraform apply -auto-approve -var-file=./environments/dev/main.tfvars -var token=$(token)

prod-destroy: prod-init
	terraform destroy -auto-approve -var-file=./environments/dev/main.tfvars -var token=$(token)

tools-infra:
	git pull
	rm -rf .terraform/terraform.tfstate
	cd tools ; terraform init ; terraform plan ; terraform apply -auto-approve -var token=$(token)

