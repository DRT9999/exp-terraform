terraform init -backend-config=env-dev/state.tfvars
terraform plan -var-file=env-${env}/main.tfvars ssh_pwd=${ssh_pwd} #-var vault_token=${vault_token} -var ssh_pwd=${ssh_pwd}
terraform ${action} -auto-approve ssh_pwd=${ssh_pwd} #-var-file=env-${env}/main.tfvars -var vault_token=${vault_token} -var ssh_pwd=${ssh_pwd}