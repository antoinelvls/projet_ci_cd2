# Install Terraform v0.13.X (https://www.terraform.io/downloads.html)
# Export AWS AK / SK for using Terraform
 export AWS_ACCESS_KEY_ID=AKIA2G2XJY5PRHXUEGWX
 export AWS_SECRET_ACCESS_KEY=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
 GROUP_ID=D1
# Changez le group_id (ici test) par votre group_id
infra_test:
	terraform validate .
# USE GITLAB ARTEFACT for deploy and destroy (terraform.tfstate)
infra_deploy:
	terraform init -var="group_id=test" .
	terraform apply -var="group_id=test" -auto-approve .
# Le job destroy doit-être mis en manuel
infra_destroy:
	terraform init .
	terraform destroy -var="group_id=test" -auto-approve .
