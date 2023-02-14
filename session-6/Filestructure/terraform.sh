#!/bin/bash 

rm -rf .terraform*
read -p "Which environment would you like?" ENV 
echo $ENV 
sed -i "s/_env_/$ENV/g" backend.tf

echo "Environment is set to $ENV"

terraform init
terraform plan -var-file=$ENV.tfvars

terraform destroy -var-file=$ENV.tfvars -auto-approve

echo "Rolling back the backend"
sed -i "s/$ENV/_env_/g" backend.tf
echo "Script ran successfully"
