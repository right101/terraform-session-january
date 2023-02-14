#!/bin/bash 

rm -rf .terraform*
read -p "Which environment would you like?" ENV 
echo $ENV 
sed -i "s/_env_/$ENV/g" backend.tf

echo "Environment is set to $ENV"

terraform init
terraform plan -var-file=$ENV.tfvars

read -p "You sure you wanna apply it?" apply 
if $apply == [yes]:
then terraform apply -var-file=$ENV.tfvars -auto-approve
else echo "Terraform is not gonna apply"
fi

echo "Rolling back the backend"
sed -i "s/$ENV/_env_/g" backend.tf
echo "Script ran successfully"
Footer
© 2023 GitHub, Inc.
Footer navigation
Terms
